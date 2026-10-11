package androidx.exifinterface.media;

import android.annotation.SuppressLint;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.location.Location;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.system.OsConstants;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.exifinterface.media.C1067a;
import com.alibaba.fastjson2.JSONB;
import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser;
import com.google.android.material.motion.MotionUtils;
import com.google.common.base.Ascii;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.CRC32;
import okhttp3.internal.ws.WebSocketProtocol;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.compress.compressors.lz4.FramedLZ4CompressorInputStream;

/* loaded from: classes3.dex */
public class ExifInterface {

    /* renamed from: A */
    public static final String f7139A = "SubIFDPointer";

    /* renamed from: A0 */
    public static final int f7140A0 = 5;

    /* renamed from: A1 */
    public static final byte f7141A1 = -54;
    public static final short ALTITUDE_ABOVE_SEA_LEVEL = 0;
    public static final short ALTITUDE_BELOW_SEA_LEVEL = 1;

    /* renamed from: B */
    public static final String f7142B = "CameraSettingsIFDPointer";

    /* renamed from: B0 */
    public static final int f7143B0 = 6;

    /* renamed from: B1 */
    public static final byte f7144B1 = -53;

    /* renamed from: C */
    public static final String f7145C = "ImageProcessingIFDPointer";

    /* renamed from: C0 */
    public static final int f7146C0 = 7;

    /* renamed from: C1 */
    public static final byte f7147C1 = -51;
    public static final int COLOR_SPACE_S_RGB = 1;
    public static final int COLOR_SPACE_UNCALIBRATED = 65535;
    public static final short CONTRAST_HARD = 2;
    public static final short CONTRAST_NORMAL = 0;
    public static final short CONTRAST_SOFT = 1;

    /* renamed from: D */
    public static final int f7148D = 512;

    /* renamed from: D0 */
    public static final int f7149D0 = 8;

    /* renamed from: D1 */
    public static final byte f7150D1 = -50;
    public static final int DATA_DEFLATE_ZIP = 8;
    public static final int DATA_HUFFMAN_COMPRESSED = 2;
    public static final int DATA_JPEG = 6;
    public static final int DATA_JPEG_COMPRESSED = 7;
    public static final int DATA_LOSSY_JPEG = 34892;
    public static final int DATA_PACK_BITS_COMPRESSED = 32773;
    public static final int DATA_UNCOMPRESSED = 1;

    /* renamed from: E0 */
    public static final int f7152E0 = 9;

    /* renamed from: E1 */
    public static final byte f7153E1 = -49;
    public static final short EXPOSURE_MODE_AUTO = 0;
    public static final short EXPOSURE_MODE_AUTO_BRACKET = 2;
    public static final short EXPOSURE_MODE_MANUAL = 1;
    public static final short EXPOSURE_PROGRAM_ACTION = 6;
    public static final short EXPOSURE_PROGRAM_APERTURE_PRIORITY = 3;
    public static final short EXPOSURE_PROGRAM_CREATIVE = 5;
    public static final short EXPOSURE_PROGRAM_LANDSCAPE_MODE = 8;
    public static final short EXPOSURE_PROGRAM_MANUAL = 1;
    public static final short EXPOSURE_PROGRAM_NORMAL = 2;
    public static final short EXPOSURE_PROGRAM_NOT_DEFINED = 0;
    public static final short EXPOSURE_PROGRAM_PORTRAIT_MODE = 7;
    public static final short EXPOSURE_PROGRAM_SHUTTER_PRIORITY = 4;

    /* renamed from: F0 */
    public static final int f7155F0 = 10;

    /* renamed from: F1 */
    public static final byte f7156F1 = -38;
    public static final short FILE_SOURCE_DSC = 3;
    public static final short FILE_SOURCE_OTHER = 0;
    public static final short FILE_SOURCE_REFLEX_SCANNER = 2;
    public static final short FILE_SOURCE_TRANSPARENT_SCANNER = 1;
    public static final short FLAG_FLASH_FIRED = 1;
    public static final short FLAG_FLASH_MODE_AUTO = 24;
    public static final short FLAG_FLASH_MODE_COMPULSORY_FIRING = 8;
    public static final short FLAG_FLASH_MODE_COMPULSORY_SUPPRESSION = 16;
    public static final short FLAG_FLASH_NO_FLASH_FUNCTION = 32;
    public static final short FLAG_FLASH_RED_EYE_SUPPORTED = 64;
    public static final short FLAG_FLASH_RETURN_LIGHT_DETECTED = 6;
    public static final short FLAG_FLASH_RETURN_LIGHT_NOT_DETECTED = 4;
    public static final short FORMAT_CHUNKY = 1;
    public static final short FORMAT_PLANAR = 2;

    /* renamed from: G */
    public static final int f7157G = 5000;

    /* renamed from: G0 */
    public static final int f7158G0 = 11;

    /* renamed from: G1 */
    public static final byte f7159G1 = -31;
    public static final short GAIN_CONTROL_HIGH_GAIN_DOWN = 4;
    public static final short GAIN_CONTROL_HIGH_GAIN_UP = 2;
    public static final short GAIN_CONTROL_LOW_GAIN_DOWN = 3;
    public static final short GAIN_CONTROL_LOW_GAIN_UP = 1;
    public static final short GAIN_CONTROL_NONE = 0;
    public static final String GPS_DIRECTION_MAGNETIC = "M";
    public static final String GPS_DIRECTION_TRUE = "T";
    public static final String GPS_DISTANCE_KILOMETERS = "K";
    public static final String GPS_DISTANCE_MILES = "M";
    public static final String GPS_DISTANCE_NAUTICAL_MILES = "N";
    public static final String GPS_MEASUREMENT_2D = "2";
    public static final String GPS_MEASUREMENT_3D = "3";
    public static final short GPS_MEASUREMENT_DIFFERENTIAL_CORRECTED = 1;
    public static final String GPS_MEASUREMENT_INTERRUPTED = "V";
    public static final String GPS_MEASUREMENT_IN_PROGRESS = "A";
    public static final short GPS_MEASUREMENT_NO_DIFFERENTIAL = 0;
    public static final String GPS_SPEED_KILOMETERS_PER_HOUR = "K";
    public static final String GPS_SPEED_KNOTS = "N";
    public static final String GPS_SPEED_MILES_PER_HOUR = "M";

    /* renamed from: H0 */
    public static final int f7161H0 = 12;

    /* renamed from: H1 */
    public static final byte f7162H1 = -2;

    /* renamed from: I */
    public static final String f7163I = "FUJIFILMCCD-RAW";

    /* renamed from: I0 */
    public static final int f7164I0 = 13;

    /* renamed from: I1 */
    public static final byte f7165I1 = -39;

    /* renamed from: J */
    public static final int f7166J = 84;

    /* renamed from: J0 */
    public static final int f7167J0 = 8192;

    /* renamed from: J1 */
    public static final int f7168J1 = 0;

    /* renamed from: K1 */
    public static final int f7171K1 = 1;

    /* renamed from: L1 */
    public static final int f7174L1 = 2;
    public static final String LATITUDE_NORTH = "N";
    public static final String LATITUDE_SOUTH = "S";
    public static final short LIGHT_SOURCE_CLOUDY_WEATHER = 10;
    public static final short LIGHT_SOURCE_COOL_WHITE_FLUORESCENT = 14;
    public static final short LIGHT_SOURCE_D50 = 23;
    public static final short LIGHT_SOURCE_D55 = 20;
    public static final short LIGHT_SOURCE_D65 = 21;
    public static final short LIGHT_SOURCE_D75 = 22;
    public static final short LIGHT_SOURCE_DAYLIGHT = 1;
    public static final short LIGHT_SOURCE_DAYLIGHT_FLUORESCENT = 12;
    public static final short LIGHT_SOURCE_DAY_WHITE_FLUORESCENT = 13;
    public static final short LIGHT_SOURCE_FINE_WEATHER = 9;
    public static final short LIGHT_SOURCE_FLASH = 4;
    public static final short LIGHT_SOURCE_FLUORESCENT = 2;
    public static final short LIGHT_SOURCE_ISO_STUDIO_TUNGSTEN = 24;
    public static final short LIGHT_SOURCE_OTHER = 255;
    public static final short LIGHT_SOURCE_SHADE = 11;
    public static final short LIGHT_SOURCE_STANDARD_LIGHT_A = 17;
    public static final short LIGHT_SOURCE_STANDARD_LIGHT_B = 18;
    public static final short LIGHT_SOURCE_STANDARD_LIGHT_C = 19;
    public static final short LIGHT_SOURCE_TUNGSTEN = 3;
    public static final short LIGHT_SOURCE_UNKNOWN = 0;
    public static final short LIGHT_SOURCE_WARM_WHITE_FLUORESCENT = 16;
    public static final short LIGHT_SOURCE_WHITE_FLUORESCENT = 15;
    public static final String LONGITUDE_EAST = "E";
    public static final String LONGITUDE_WEST = "W";

    /* renamed from: M1 */
    public static final int f7177M1 = 3;
    public static final short METERING_MODE_AVERAGE = 1;
    public static final short METERING_MODE_CENTER_WEIGHT_AVERAGE = 2;
    public static final short METERING_MODE_MULTI_SPOT = 4;
    public static final short METERING_MODE_OTHER = 255;
    public static final short METERING_MODE_PARTIAL = 6;
    public static final short METERING_MODE_PATTERN = 5;
    public static final short METERING_MODE_SPOT = 3;
    public static final short METERING_MODE_UNKNOWN = 0;

    /* renamed from: N */
    public static final short f7178N = 20306;

    /* renamed from: N0 */
    public static final C1064e[] f7179N0;

    /* renamed from: N1 */
    public static final int f7180N1 = 4;

    /* renamed from: O */
    public static final short f7181O = 21330;

    /* renamed from: O0 */
    public static final C1064e[] f7182O0;

    /* renamed from: O1 */
    public static final int f7183O1 = 5;
    public static final int ORIENTATION_FLIP_HORIZONTAL = 2;
    public static final int ORIENTATION_FLIP_VERTICAL = 4;
    public static final int ORIENTATION_NORMAL = 1;
    public static final int ORIENTATION_ROTATE_180 = 3;
    public static final int ORIENTATION_ROTATE_270 = 8;
    public static final int ORIENTATION_ROTATE_90 = 6;
    public static final int ORIENTATION_TRANSPOSE = 5;
    public static final int ORIENTATION_TRANSVERSE = 7;
    public static final int ORIENTATION_UNDEFINED = 0;
    public static final int ORIGINAL_RESOLUTION_IMAGE = 0;

    /* renamed from: P0 */
    public static final C1064e[] f7185P0;

    /* renamed from: P1 */
    public static final int f7186P1 = 6;
    public static final int PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO = 1;
    public static final int PHOTOMETRIC_INTERPRETATION_RGB = 2;
    public static final int PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO = 0;
    public static final int PHOTOMETRIC_INTERPRETATION_YCBCR = 6;

    /* renamed from: Q0 */
    public static final C1064e[] f7188Q0;

    /* renamed from: Q1 */
    public static final int f7189Q1 = 7;

    /* renamed from: R */
    public static final int f7190R = 8;

    /* renamed from: R0 */
    public static final C1064e[] f7191R0;

    /* renamed from: R1 */
    public static final int f7192R1 = 8;
    public static final int REDUCED_RESOLUTION_IMAGE = 1;
    public static final short RENDERED_PROCESS_CUSTOM = 1;
    public static final short RENDERED_PROCESS_NORMAL = 0;
    public static final short RESOLUTION_UNIT_CENTIMETERS = 3;
    public static final short RESOLUTION_UNIT_INCHES = 2;

    /* renamed from: S */
    public static final int f7193S = 12;

    /* renamed from: S0 */
    public static final C1064e f7194S0;

    /* renamed from: S1 */
    public static final int f7195S1 = 9;
    public static final short SATURATION_HIGH = 0;
    public static final short SATURATION_LOW = 0;
    public static final short SATURATION_NORMAL = 0;
    public static final short SCENE_CAPTURE_TYPE_LANDSCAPE = 1;
    public static final short SCENE_CAPTURE_TYPE_NIGHT = 3;
    public static final short SCENE_CAPTURE_TYPE_PORTRAIT = 2;
    public static final short SCENE_CAPTURE_TYPE_STANDARD = 0;
    public static final short SCENE_TYPE_DIRECTLY_PHOTOGRAPHED = 1;
    public static final short SENSITIVITY_TYPE_ISO_SPEED = 3;
    public static final short SENSITIVITY_TYPE_REI = 2;
    public static final short SENSITIVITY_TYPE_REI_AND_ISO = 6;
    public static final short SENSITIVITY_TYPE_SOS = 1;
    public static final short SENSITIVITY_TYPE_SOS_AND_ISO = 5;
    public static final short SENSITIVITY_TYPE_SOS_AND_REI = 4;
    public static final short SENSITIVITY_TYPE_SOS_AND_REI_AND_ISO = 7;
    public static final short SENSITIVITY_TYPE_UNKNOWN = 0;
    public static final short SENSOR_TYPE_COLOR_SEQUENTIAL = 5;
    public static final short SENSOR_TYPE_COLOR_SEQUENTIAL_LINEAR = 8;
    public static final short SENSOR_TYPE_NOT_DEFINED = 1;
    public static final short SENSOR_TYPE_ONE_CHIP = 2;
    public static final short SENSOR_TYPE_THREE_CHIP = 4;
    public static final short SENSOR_TYPE_TRILINEAR = 7;
    public static final short SENSOR_TYPE_TWO_CHIP = 3;
    public static final short SHARPNESS_HARD = 2;
    public static final short SHARPNESS_NORMAL = 0;
    public static final short SHARPNESS_SOFT = 1;
    public static final int STREAM_TYPE_EXIF_DATA_ONLY = 1;
    public static final int STREAM_TYPE_FULL_IMAGE_DATA = 0;
    public static final short SUBJECT_DISTANCE_RANGE_CLOSE_VIEW = 2;
    public static final short SUBJECT_DISTANCE_RANGE_DISTANT_VIEW = 3;
    public static final short SUBJECT_DISTANCE_RANGE_MACRO = 1;
    public static final short SUBJECT_DISTANCE_RANGE_UNKNOWN = 0;

    /* renamed from: T */
    public static final short f7196T = 85;

    /* renamed from: T0 */
    public static final C1064e[] f7197T0;

    /* renamed from: T1 */
    public static final int f7198T1 = 10;
    public static final String TAG_APERTURE_VALUE = "ApertureValue";
    public static final String TAG_ARTIST = "Artist";
    public static final String TAG_BITS_PER_SAMPLE = "BitsPerSample";
    public static final String TAG_BODY_SERIAL_NUMBER = "BodySerialNumber";
    public static final String TAG_BRIGHTNESS_VALUE = "BrightnessValue";

    @Deprecated
    public static final String TAG_CAMARA_OWNER_NAME = "CameraOwnerName";
    public static final String TAG_CAMERA_OWNER_NAME = "CameraOwnerName";
    public static final String TAG_CFA_PATTERN = "CFAPattern";
    public static final String TAG_COLOR_SPACE = "ColorSpace";
    public static final String TAG_COMPONENTS_CONFIGURATION = "ComponentsConfiguration";
    public static final String TAG_COMPRESSED_BITS_PER_PIXEL = "CompressedBitsPerPixel";
    public static final String TAG_COMPRESSION = "Compression";
    public static final String TAG_CONTRAST = "Contrast";
    public static final String TAG_COPYRIGHT = "Copyright";
    public static final String TAG_CUSTOM_RENDERED = "CustomRendered";
    public static final String TAG_DATETIME = "DateTime";
    public static final String TAG_DATETIME_DIGITIZED = "DateTimeDigitized";
    public static final String TAG_DATETIME_ORIGINAL = "DateTimeOriginal";
    public static final String TAG_DEFAULT_CROP_SIZE = "DefaultCropSize";
    public static final String TAG_DEVICE_SETTING_DESCRIPTION = "DeviceSettingDescription";
    public static final String TAG_DIGITAL_ZOOM_RATIO = "DigitalZoomRatio";
    public static final String TAG_DNG_VERSION = "DNGVersion";
    public static final String TAG_EXIF_VERSION = "ExifVersion";
    public static final String TAG_EXPOSURE_BIAS_VALUE = "ExposureBiasValue";
    public static final String TAG_EXPOSURE_INDEX = "ExposureIndex";
    public static final String TAG_EXPOSURE_MODE = "ExposureMode";
    public static final String TAG_EXPOSURE_PROGRAM = "ExposureProgram";
    public static final String TAG_EXPOSURE_TIME = "ExposureTime";
    public static final String TAG_FILE_SOURCE = "FileSource";
    public static final String TAG_FLASH = "Flash";
    public static final String TAG_FLASHPIX_VERSION = "FlashpixVersion";
    public static final String TAG_FLASH_ENERGY = "FlashEnergy";
    public static final String TAG_FOCAL_LENGTH = "FocalLength";
    public static final String TAG_FOCAL_LENGTH_IN_35MM_FILM = "FocalLengthIn35mmFilm";
    public static final String TAG_FOCAL_PLANE_RESOLUTION_UNIT = "FocalPlaneResolutionUnit";
    public static final String TAG_FOCAL_PLANE_X_RESOLUTION = "FocalPlaneXResolution";
    public static final String TAG_FOCAL_PLANE_Y_RESOLUTION = "FocalPlaneYResolution";
    public static final String TAG_F_NUMBER = "FNumber";
    public static final String TAG_GAIN_CONTROL = "GainControl";
    public static final String TAG_GAMMA = "Gamma";
    public static final String TAG_GPS_ALTITUDE = "GPSAltitude";
    public static final String TAG_GPS_ALTITUDE_REF = "GPSAltitudeRef";
    public static final String TAG_GPS_AREA_INFORMATION = "GPSAreaInformation";
    public static final String TAG_GPS_DATESTAMP = "GPSDateStamp";
    public static final String TAG_GPS_DEST_BEARING = "GPSDestBearing";
    public static final String TAG_GPS_DEST_BEARING_REF = "GPSDestBearingRef";
    public static final String TAG_GPS_DEST_DISTANCE = "GPSDestDistance";
    public static final String TAG_GPS_DEST_DISTANCE_REF = "GPSDestDistanceRef";
    public static final String TAG_GPS_DEST_LATITUDE = "GPSDestLatitude";
    public static final String TAG_GPS_DEST_LATITUDE_REF = "GPSDestLatitudeRef";
    public static final String TAG_GPS_DEST_LONGITUDE = "GPSDestLongitude";
    public static final String TAG_GPS_DEST_LONGITUDE_REF = "GPSDestLongitudeRef";
    public static final String TAG_GPS_DIFFERENTIAL = "GPSDifferential";
    public static final String TAG_GPS_DOP = "GPSDOP";
    public static final String TAG_GPS_H_POSITIONING_ERROR = "GPSHPositioningError";
    public static final String TAG_GPS_IMG_DIRECTION = "GPSImgDirection";
    public static final String TAG_GPS_IMG_DIRECTION_REF = "GPSImgDirectionRef";
    public static final String TAG_GPS_LATITUDE = "GPSLatitude";
    public static final String TAG_GPS_LATITUDE_REF = "GPSLatitudeRef";
    public static final String TAG_GPS_LONGITUDE = "GPSLongitude";
    public static final String TAG_GPS_LONGITUDE_REF = "GPSLongitudeRef";
    public static final String TAG_GPS_MAP_DATUM = "GPSMapDatum";
    public static final String TAG_GPS_MEASURE_MODE = "GPSMeasureMode";
    public static final String TAG_GPS_PROCESSING_METHOD = "GPSProcessingMethod";
    public static final String TAG_GPS_SATELLITES = "GPSSatellites";
    public static final String TAG_GPS_SPEED = "GPSSpeed";
    public static final String TAG_GPS_SPEED_REF = "GPSSpeedRef";
    public static final String TAG_GPS_STATUS = "GPSStatus";
    public static final String TAG_GPS_TIMESTAMP = "GPSTimeStamp";
    public static final String TAG_GPS_TRACK = "GPSTrack";
    public static final String TAG_GPS_TRACK_REF = "GPSTrackRef";
    public static final String TAG_GPS_VERSION_ID = "GPSVersionID";
    public static final String TAG_IMAGE_DESCRIPTION = "ImageDescription";
    public static final String TAG_IMAGE_LENGTH = "ImageLength";
    public static final String TAG_IMAGE_UNIQUE_ID = "ImageUniqueID";
    public static final String TAG_IMAGE_WIDTH = "ImageWidth";
    public static final String TAG_INTEROPERABILITY_INDEX = "InteroperabilityIndex";
    public static final String TAG_ISO_SPEED = "ISOSpeed";
    public static final String TAG_ISO_SPEED_LATITUDE_YYY = "ISOSpeedLatitudeyyy";
    public static final String TAG_ISO_SPEED_LATITUDE_ZZZ = "ISOSpeedLatitudezzz";

    @Deprecated
    public static final String TAG_ISO_SPEED_RATINGS = "ISOSpeedRatings";
    public static final String TAG_JPEG_INTERCHANGE_FORMAT = "JPEGInterchangeFormat";
    public static final String TAG_JPEG_INTERCHANGE_FORMAT_LENGTH = "JPEGInterchangeFormatLength";
    public static final String TAG_LENS_MAKE = "LensMake";
    public static final String TAG_LENS_MODEL = "LensModel";
    public static final String TAG_LENS_SERIAL_NUMBER = "LensSerialNumber";
    public static final String TAG_LENS_SPECIFICATION = "LensSpecification";
    public static final String TAG_LIGHT_SOURCE = "LightSource";
    public static final String TAG_MAKE = "Make";
    public static final String TAG_MAKER_NOTE = "MakerNote";
    public static final String TAG_MAX_APERTURE_VALUE = "MaxApertureValue";
    public static final String TAG_METERING_MODE = "MeteringMode";
    public static final String TAG_MODEL = "Model";
    public static final String TAG_NEW_SUBFILE_TYPE = "NewSubfileType";
    public static final String TAG_OECF = "OECF";
    public static final String TAG_OFFSET_TIME = "OffsetTime";
    public static final String TAG_OFFSET_TIME_DIGITIZED = "OffsetTimeDigitized";
    public static final String TAG_OFFSET_TIME_ORIGINAL = "OffsetTimeOriginal";
    public static final String TAG_ORF_ASPECT_FRAME = "AspectFrame";
    public static final String TAG_ORF_PREVIEW_IMAGE_LENGTH = "PreviewImageLength";
    public static final String TAG_ORF_PREVIEW_IMAGE_START = "PreviewImageStart";
    public static final String TAG_ORF_THUMBNAIL_IMAGE = "ThumbnailImage";
    public static final String TAG_ORIENTATION = "Orientation";
    public static final String TAG_PHOTOGRAPHIC_SENSITIVITY = "PhotographicSensitivity";
    public static final String TAG_PHOTOMETRIC_INTERPRETATION = "PhotometricInterpretation";
    public static final String TAG_PIXEL_X_DIMENSION = "PixelXDimension";
    public static final String TAG_PIXEL_Y_DIMENSION = "PixelYDimension";
    public static final String TAG_PLANAR_CONFIGURATION = "PlanarConfiguration";
    public static final String TAG_PRIMARY_CHROMATICITIES = "PrimaryChromaticities";
    public static final String TAG_RECOMMENDED_EXPOSURE_INDEX = "RecommendedExposureIndex";
    public static final String TAG_REFERENCE_BLACK_WHITE = "ReferenceBlackWhite";
    public static final String TAG_RELATED_SOUND_FILE = "RelatedSoundFile";
    public static final String TAG_RESOLUTION_UNIT = "ResolutionUnit";
    public static final String TAG_ROWS_PER_STRIP = "RowsPerStrip";
    public static final String TAG_RW2_ISO = "ISO";
    public static final String TAG_RW2_JPG_FROM_RAW = "JpgFromRaw";
    public static final String TAG_RW2_SENSOR_BOTTOM_BORDER = "SensorBottomBorder";
    public static final String TAG_RW2_SENSOR_LEFT_BORDER = "SensorLeftBorder";
    public static final String TAG_RW2_SENSOR_RIGHT_BORDER = "SensorRightBorder";
    public static final String TAG_RW2_SENSOR_TOP_BORDER = "SensorTopBorder";
    public static final String TAG_SAMPLES_PER_PIXEL = "SamplesPerPixel";
    public static final String TAG_SATURATION = "Saturation";
    public static final String TAG_SCENE_CAPTURE_TYPE = "SceneCaptureType";
    public static final String TAG_SCENE_TYPE = "SceneType";
    public static final String TAG_SENSING_METHOD = "SensingMethod";
    public static final String TAG_SENSITIVITY_TYPE = "SensitivityType";
    public static final String TAG_SHARPNESS = "Sharpness";
    public static final String TAG_SHUTTER_SPEED_VALUE = "ShutterSpeedValue";
    public static final String TAG_SOFTWARE = "Software";
    public static final String TAG_SPATIAL_FREQUENCY_RESPONSE = "SpatialFrequencyResponse";
    public static final String TAG_SPECTRAL_SENSITIVITY = "SpectralSensitivity";
    public static final String TAG_STANDARD_OUTPUT_SENSITIVITY = "StandardOutputSensitivity";
    public static final String TAG_STRIP_BYTE_COUNTS = "StripByteCounts";
    public static final String TAG_STRIP_OFFSETS = "StripOffsets";
    public static final String TAG_SUBFILE_TYPE = "SubfileType";
    public static final String TAG_SUBJECT_AREA = "SubjectArea";
    public static final String TAG_SUBJECT_DISTANCE = "SubjectDistance";
    public static final String TAG_SUBJECT_DISTANCE_RANGE = "SubjectDistanceRange";
    public static final String TAG_SUBJECT_LOCATION = "SubjectLocation";
    public static final String TAG_SUBSEC_TIME = "SubSecTime";
    public static final String TAG_SUBSEC_TIME_DIGITIZED = "SubSecTimeDigitized";
    public static final String TAG_SUBSEC_TIME_ORIGINAL = "SubSecTimeOriginal";
    public static final String TAG_THUMBNAIL_IMAGE_LENGTH = "ThumbnailImageLength";
    public static final String TAG_THUMBNAIL_IMAGE_WIDTH = "ThumbnailImageWidth";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String TAG_THUMBNAIL_ORIENTATION = "ThumbnailOrientation";
    public static final String TAG_TRANSFER_FUNCTION = "TransferFunction";
    public static final String TAG_USER_COMMENT = "UserComment";
    public static final String TAG_WHITE_BALANCE = "WhiteBalance";
    public static final String TAG_WHITE_POINT = "WhitePoint";
    public static final String TAG_XMP = "Xmp";
    public static final String TAG_X_RESOLUTION = "XResolution";
    public static final String TAG_Y_CB_CR_COEFFICIENTS = "YCbCrCoefficients";
    public static final String TAG_Y_CB_CR_POSITIONING = "YCbCrPositioning";
    public static final String TAG_Y_CB_CR_SUB_SAMPLING = "YCbCrSubSampling";
    public static final String TAG_Y_RESOLUTION = "YResolution";

    /* renamed from: U */
    public static final String f7199U = "PENTAX";

    /* renamed from: U0 */
    public static final C1064e[] f7200U0;

    /* renamed from: U1 */
    public static final int f7201U1 = 11;

    /* renamed from: V */
    public static final int f7202V = 6;

    /* renamed from: V0 */
    public static final C1064e[] f7203V0;

    /* renamed from: V1 */
    public static final int f7204V1 = 12;

    /* renamed from: W0 */
    public static final C1064e[] f7206W0;

    /* renamed from: W1 */
    public static final int f7207W1 = 13;

    @Deprecated
    public static final int WHITEBALANCE_AUTO = 0;

    @Deprecated
    public static final int WHITEBALANCE_MANUAL = 1;
    public static final short WHITE_BALANCE_AUTO = 0;
    public static final short WHITE_BALANCE_MANUAL = 1;

    /* renamed from: X0 */
    public static final int f7209X0 = 0;

    /* renamed from: X1 */
    public static final int f7210X1 = 14;

    /* renamed from: Y0 */
    public static final int f7212Y0 = 1;

    /* renamed from: Y1 */
    public static final Pattern f7213Y1;
    public static final short Y_CB_CR_POSITIONING_CENTERED = 1;
    public static final short Y_CB_CR_POSITIONING_CO_SITED = 2;

    /* renamed from: Z0 */
    public static final int f7215Z0 = 2;

    /* renamed from: Z1 */
    public static final Pattern f7216Z1;

    /* renamed from: a0 */
    public static final int f7217a0 = 4;

    /* renamed from: a1 */
    public static final int f7218a1 = 3;

    /* renamed from: a2 */
    public static final Pattern f7219a2;

    /* renamed from: b0 */
    public static final int f7220b0 = 4;

    /* renamed from: b1 */
    public static final int f7221b1 = 4;

    /* renamed from: b2 */
    public static final Pattern f7222b2;

    /* renamed from: c1 */
    public static final int f7224c1 = 5;

    /* renamed from: c2 */
    public static final int f7225c2 = 19;

    /* renamed from: d1 */
    public static final int f7227d1 = 6;

    /* renamed from: e0 */
    public static final int f7228e0 = 4;

    /* renamed from: e1 */
    public static final int f7229e1 = 7;

    /* renamed from: f1 */
    public static final int f7231f1 = 8;

    /* renamed from: g1 */
    public static final int f7233g1 = 9;

    /* renamed from: h0 */
    public static final byte f7234h0 = 47;

    /* renamed from: h1 */
    public static final C1064e[][] f7235h1;

    /* renamed from: i1 */
    public static final C1064e[] f7237i1;

    /* renamed from: j1 */
    public static final HashMap<Integer, C1064e>[] f7239j1;

    /* renamed from: k1 */
    public static final HashMap<String, C1064e>[] f7241k1;

    /* renamed from: l1 */
    public static final HashSet<String> f7243l1;

    /* renamed from: m1 */
    public static final HashMap<Integer, Integer> f7245m1;

    /* renamed from: n0 */
    public static final int f7246n0 = 10;

    /* renamed from: n1 */
    public static final Charset f7247n1;

    /* renamed from: o0 */
    public static final int f7248o0 = 4;

    /* renamed from: o1 */
    public static final byte[] f7249o1;

    /* renamed from: p0 */
    public static final int f7250p0 = 4;

    /* renamed from: p1 */
    public static final byte[] f7251p1;

    /* renamed from: q0 */
    public static SimpleDateFormat f7252q0 = null;

    /* renamed from: q1 */
    public static final byte f7253q1 = -1;

    /* renamed from: r0 */
    public static SimpleDateFormat f7254r0 = null;

    /* renamed from: r1 */
    public static final byte f7255r1 = -40;

    /* renamed from: s0 */
    public static final short f7256s0 = 18761;

    /* renamed from: s1 */
    public static final byte f7257s1 = -64;

    /* renamed from: t0 */
    public static final short f7258t0 = 19789;

    /* renamed from: t1 */
    public static final byte f7259t1 = -63;

    /* renamed from: u0 */
    public static final byte f7260u0 = 42;

    /* renamed from: u1 */
    public static final byte f7261u1 = -62;

    /* renamed from: v0 */
    public static final int f7263v0 = 8;

    /* renamed from: v1 */
    public static final byte f7264v1 = -61;

    /* renamed from: w0 */
    public static final int f7266w0 = 1;

    /* renamed from: w1 */
    public static final byte f7267w1 = -59;

    /* renamed from: x */
    public static final String f7268x = "ExifIFDPointer";

    /* renamed from: x0 */
    public static final int f7269x0 = 2;

    /* renamed from: x1 */
    public static final byte f7270x1 = -58;

    /* renamed from: y */
    public static final String f7271y = "GPSInfoIFDPointer";

    /* renamed from: y0 */
    public static final int f7272y0 = 3;

    /* renamed from: y1 */
    public static final byte f7273y1 = -57;

    /* renamed from: z */
    public static final String f7274z = "InteroperabilityIFDPointer";

    /* renamed from: z0 */
    public static final int f7275z0 = 4;

    /* renamed from: z1 */
    public static final byte f7276z1 = -55;

    /* renamed from: a */
    public String f7277a;

    /* renamed from: b */
    public FileDescriptor f7278b;

    /* renamed from: c */
    public AssetManager.AssetInputStream f7279c;

    /* renamed from: d */
    public int f7280d;

    /* renamed from: e */
    public boolean f7281e;

    /* renamed from: f */
    public final HashMap<String, C1063d>[] f7282f;

    /* renamed from: g */
    public Set<Integer> f7283g;

    /* renamed from: h */
    public ByteOrder f7284h;

    /* renamed from: i */
    public boolean f7285i;

    /* renamed from: j */
    public boolean f7286j;

    /* renamed from: k */
    public boolean f7287k;

    /* renamed from: l */
    public int f7288l;

    /* renamed from: m */
    public int f7289m;

    /* renamed from: n */
    public byte[] f7290n;

    /* renamed from: o */
    public int f7291o;

    /* renamed from: p */
    public int f7292p;

    /* renamed from: q */
    public int f7293q;

    /* renamed from: r */
    public int f7294r;

    /* renamed from: s */
    public int f7295s;

    /* renamed from: t */
    public boolean f7296t;

    /* renamed from: u */
    public boolean f7297u;

    /* renamed from: v */
    public static final String f7262v = "ExifInterface";

    /* renamed from: w */
    public static final boolean f7265w = Log.isLoggable(f7262v, 3);

    /* renamed from: E */
    public static final List<Integer> f7151E = Arrays.asList(1, 6, 3, 8);

    /* renamed from: F */
    public static final List<Integer> f7154F = Arrays.asList(2, 7, 4, 5);
    public static final int[] BITS_PER_SAMPLE_RGB = {8, 8, 8};
    public static final int[] BITS_PER_SAMPLE_GREYSCALE_1 = {4};
    public static final int[] BITS_PER_SAMPLE_GREYSCALE_2 = {8};

    /* renamed from: H */
    public static final byte[] f7160H = {-1, -40, -1};

    /* renamed from: K */
    public static final byte[] f7169K = {102, 116, JSONB.Constants.BC_STR_ASCII, 112};

    /* renamed from: L */
    public static final byte[] f7172L = {JSONB.Constants.BC_STR_ASCII_FIX_36, JSONB.Constants.BC_STR_ASCII_FIX_32, 102, TarConstants.LF_LINK};

    /* renamed from: M */
    public static final byte[] f7175M = {104, 101, JSONB.Constants.BC_STR_ASCII_FIX_32, 99};

    /* renamed from: P */
    public static final byte[] f7184P = {79, TarConstants.LF_GNUTYPE_LONGNAME, 89, 77, FramedLZ4CompressorInputStream.f106197v, 0};

    /* renamed from: Q */
    public static final byte[] f7187Q = {79, TarConstants.LF_GNUTYPE_LONGNAME, 89, 77, FramedLZ4CompressorInputStream.f106197v, 85, TarConstants.LF_GNUTYPE_SPARSE, 0, 73, 73};

    /* renamed from: W */
    public static final byte[] f7205W = {-119, FramedLZ4CompressorInputStream.f106197v, JSONB.Constants.BC_STR_ASCII_FIX_5, JSONB.Constants.BC_INT32_SHORT_MAX, 13, 10, Ascii.SUB, 10};

    /* renamed from: X */
    public static final byte[] f7208X = {101, TarConstants.LF_PAX_EXTENDED_HEADER_UC, 73, 102};

    /* renamed from: Y */
    public static final byte[] f7211Y = {73, JSONB.Constants.BC_INT32, JSONB.Constants.BC_INT32_SHORT_ZERO, 82};

    /* renamed from: Z */
    public static final byte[] f7214Z = {73, 69, JSONB.Constants.BC_STR_ASCII_FIX_5, JSONB.Constants.BC_INT32_SHORT_ZERO};

    /* renamed from: c0 */
    public static final byte[] f7223c0 = {82, 73, 70, 70};

    /* renamed from: d0 */
    public static final byte[] f7226d0 = {87, 69, 66, FramedLZ4CompressorInputStream.f106197v};

    /* renamed from: f0 */
    public static final byte[] f7230f0 = {69, TarConstants.LF_PAX_EXTENDED_HEADER_UC, 73, 70};

    /* renamed from: g0 */
    public static final byte[] f7232g0 = {-99, 1, 42};

    /* renamed from: i0 */
    public static final byte[] f7236i0 = "VP8X".getBytes(Charset.defaultCharset());

    /* renamed from: j0 */
    public static final byte[] f7238j0 = "VP8L".getBytes(Charset.defaultCharset());

    /* renamed from: k0 */
    public static final byte[] f7240k0 = "VP8 ".getBytes(Charset.defaultCharset());

    /* renamed from: l0 */
    public static final byte[] f7242l0 = "ANIM".getBytes(Charset.defaultCharset());

    /* renamed from: m0 */
    public static final byte[] f7244m0 = "ANMF".getBytes(Charset.defaultCharset());

    /* renamed from: K0 */
    public static final String[] f7170K0 = {"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};

    /* renamed from: L0 */
    public static final int[] f7173L0 = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};

    /* renamed from: M0 */
    public static final byte[] f7176M0 = {65, TarConstants.LF_GNUTYPE_SPARSE, 67, 73, 73, 0, 0, 0};

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public @interface ExifStreamType {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public @interface IfdType {
    }

    /* renamed from: androidx.exifinterface.media.ExifInterface$a */
    /* loaded from: classes3.dex */
    public class C1060a extends MediaDataSource {

        /* renamed from: e */
        public long f7298e;

        /* renamed from: f */
        public final /* synthetic */ C1066g f7299f;

        public C1060a(C1066g c1066g) {
            this.f7299f = c1066g;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // android.media.MediaDataSource
        public long getSize() throws IOException {
            return -1L;
        }

        @Override // android.media.MediaDataSource
        public int readAt(long j, byte[] bArr, int i, int i2) throws IOException {
            if (i2 == 0) {
                return 0;
            }
            if (j < 0) {
                return -1;
            }
            try {
                long j2 = this.f7298e;
                if (j2 != j) {
                    if (j2 >= 0 && j >= j2 + this.f7299f.available()) {
                        return -1;
                    }
                    this.f7299f.seek(j);
                    this.f7298e = j;
                }
                if (i2 > this.f7299f.available()) {
                    i2 = this.f7299f.available();
                }
                int read = this.f7299f.read(bArr, i, i2);
                if (read >= 0) {
                    this.f7298e += read;
                    return read;
                }
            } catch (IOException unused) {
            }
            this.f7298e = -1L;
            return -1;
        }
    }

    /* renamed from: androidx.exifinterface.media.ExifInterface$b */
    /* loaded from: classes3.dex */
    public static class C1061b extends InputStream implements DataInput {

        /* renamed from: i */
        public static final ByteOrder f7301i = ByteOrder.LITTLE_ENDIAN;

        /* renamed from: j */
        public static final ByteOrder f7302j = ByteOrder.BIG_ENDIAN;

        /* renamed from: e */
        public final DataInputStream f7303e;

        /* renamed from: f */
        public ByteOrder f7304f;

        /* renamed from: g */
        public int f7305g;

        /* renamed from: h */
        public byte[] f7306h;

        public C1061b(byte[] bArr) throws IOException {
            this(new ByteArrayInputStream(bArr), ByteOrder.BIG_ENDIAN);
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.f7303e.available();
        }

        /* renamed from: f */
        public void m4454f(int i) throws IOException {
            int i2 = 0;
            while (i2 < i) {
                int i3 = i - i2;
                int skip = (int) this.f7303e.skip(i3);
                if (skip <= 0) {
                    if (this.f7306h == null) {
                        this.f7306h = new byte[8192];
                    }
                    skip = this.f7303e.read(this.f7306h, 0, Math.min(8192, i3));
                    if (skip == -1) {
                        throw new EOFException("Reached EOF while skipping " + i + " bytes.");
                    }
                }
                i2 += skip;
            }
            this.f7305g += i2;
        }

        @Override // java.io.InputStream
        public void mark(int i) {
            throw new UnsupportedOperationException("Mark is currently unsupported");
        }

        public int position() {
            return this.f7305g;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            this.f7305g++;
            return this.f7303e.read();
        }

        @Override // java.io.DataInput
        public boolean readBoolean() throws IOException {
            this.f7305g++;
            return this.f7303e.readBoolean();
        }

        @Override // java.io.DataInput
        public byte readByte() throws IOException {
            this.f7305g++;
            int read = this.f7303e.read();
            if (read >= 0) {
                return (byte) read;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public char readChar() throws IOException {
            this.f7305g += 2;
            return this.f7303e.readChar();
        }

        @Override // java.io.DataInput
        public double readDouble() throws IOException {
            return Double.longBitsToDouble(readLong());
        }

        @Override // java.io.DataInput
        public float readFloat() throws IOException {
            return Float.intBitsToFloat(readInt());
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr, int i, int i2) throws IOException {
            this.f7305g += i2;
            this.f7303e.readFully(bArr, i, i2);
        }

        @Override // java.io.DataInput
        public int readInt() throws IOException {
            this.f7305g += 4;
            int read = this.f7303e.read();
            int read2 = this.f7303e.read();
            int read3 = this.f7303e.read();
            int read4 = this.f7303e.read();
            if ((read | read2 | read3 | read4) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f7304f;
            if (byteOrder == f7301i) {
                return (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
            }
            if (byteOrder == f7302j) {
                return (read << 24) + (read2 << 16) + (read3 << 8) + read4;
            }
            throw new IOException("Invalid byte order: " + this.f7304f);
        }

        @Override // java.io.DataInput
        public String readLine() throws IOException {
            Log.d(ExifInterface.f7262v, "Currently unsupported");
            return null;
        }

        @Override // java.io.DataInput
        public long readLong() throws IOException {
            this.f7305g += 8;
            int read = this.f7303e.read();
            int read2 = this.f7303e.read();
            int read3 = this.f7303e.read();
            int read4 = this.f7303e.read();
            int read5 = this.f7303e.read();
            int read6 = this.f7303e.read();
            int read7 = this.f7303e.read();
            int read8 = this.f7303e.read();
            if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f7304f;
            if (byteOrder == f7301i) {
                return (read8 << 56) + (read7 << 48) + (read6 << 40) + (read5 << 32) + (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
            }
            if (byteOrder == f7302j) {
                return (read << 56) + (read2 << 48) + (read3 << 40) + (read4 << 32) + (read5 << 24) + (read6 << 16) + (read7 << 8) + read8;
            }
            throw new IOException("Invalid byte order: " + this.f7304f);
        }

        @Override // java.io.DataInput
        public short readShort() throws IOException {
            int i;
            this.f7305g += 2;
            int read = this.f7303e.read();
            int read2 = this.f7303e.read();
            if ((read | read2) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f7304f;
            if (byteOrder == f7301i) {
                i = (read2 << 8) + read;
            } else {
                if (byteOrder != f7302j) {
                    throw new IOException("Invalid byte order: " + this.f7304f);
                }
                i = (read << 8) + read2;
            }
            return (short) i;
        }

        @Override // java.io.DataInput
        public String readUTF() throws IOException {
            this.f7305g += 2;
            return this.f7303e.readUTF();
        }

        @Override // java.io.DataInput
        public int readUnsignedByte() throws IOException {
            this.f7305g++;
            return this.f7303e.readUnsignedByte();
        }

        public long readUnsignedInt() throws IOException {
            return readInt() & 4294967295L;
        }

        @Override // java.io.DataInput
        public int readUnsignedShort() throws IOException {
            this.f7305g += 2;
            int read = this.f7303e.read();
            int read2 = this.f7303e.read();
            if ((read | read2) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f7304f;
            if (byteOrder == f7301i) {
                return (read2 << 8) + read;
            }
            if (byteOrder == f7302j) {
                return (read << 8) + read2;
            }
            throw new IOException("Invalid byte order: " + this.f7304f);
        }

        @Override // java.io.InputStream
        public void reset() {
            throw new UnsupportedOperationException("Reset is currently unsupported");
        }

        public void setByteOrder(ByteOrder byteOrder) {
            this.f7304f = byteOrder;
        }

        @Override // java.io.DataInput
        public int skipBytes(int i) throws IOException {
            throw new UnsupportedOperationException("skipBytes is currently unsupported");
        }

        public C1061b(InputStream inputStream) throws IOException {
            this(inputStream, ByteOrder.BIG_ENDIAN);
        }

        public C1061b(InputStream inputStream, ByteOrder byteOrder) throws IOException {
            this.f7304f = ByteOrder.BIG_ENDIAN;
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            this.f7303e = dataInputStream;
            dataInputStream.mark(0);
            this.f7305g = 0;
            this.f7304f = byteOrder;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int read = this.f7303e.read(bArr, i, i2);
            this.f7305g += read;
            return read;
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr) throws IOException {
            this.f7305g += bArr.length;
            this.f7303e.readFully(bArr);
        }
    }

    /* renamed from: androidx.exifinterface.media.ExifInterface$c */
    /* loaded from: classes3.dex */
    public static class C1062c extends FilterOutputStream {

        /* renamed from: e */
        public final OutputStream f7307e;

        /* renamed from: f */
        public ByteOrder f7308f;

        public C1062c(OutputStream outputStream, ByteOrder byteOrder) {
            super(outputStream);
            this.f7307e = outputStream;
            this.f7308f = byteOrder;
        }

        /* renamed from: f */
        public void m4455f(short s) throws IOException {
            ByteOrder byteOrder = this.f7308f;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                this.f7307e.write((s >>> 0) & 255);
                this.f7307e.write((s >>> 8) & 255);
            } else if (byteOrder == ByteOrder.BIG_ENDIAN) {
                this.f7307e.write((s >>> 8) & 255);
                this.f7307e.write((s >>> 0) & 255);
            }
        }

        /* renamed from: j */
        public void m4456j(long j) throws IOException {
            writeInt((int) j);
        }

        public void setByteOrder(ByteOrder byteOrder) {
            this.f7308f = byteOrder;
        }

        /* renamed from: w */
        public void m4457w(int i) throws IOException {
            m4455f((short) i);
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.f7307e.write(bArr);
        }

        public void writeByte(int i) throws IOException {
            this.f7307e.write(i);
        }

        public void writeInt(int i) throws IOException {
            ByteOrder byteOrder = this.f7308f;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                this.f7307e.write((i >>> 0) & 255);
                this.f7307e.write((i >>> 8) & 255);
                this.f7307e.write((i >>> 16) & 255);
                this.f7307e.write((i >>> 24) & 255);
                return;
            }
            if (byteOrder == ByteOrder.BIG_ENDIAN) {
                this.f7307e.write((i >>> 24) & 255);
                this.f7307e.write((i >>> 16) & 255);
                this.f7307e.write((i >>> 8) & 255);
                this.f7307e.write((i >>> 0) & 255);
            }
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            this.f7307e.write(bArr, i, i2);
        }
    }

    /* renamed from: androidx.exifinterface.media.ExifInterface$d */
    /* loaded from: classes3.dex */
    public static class C1063d {

        /* renamed from: e */
        public static final long f7309e = -1;

        /* renamed from: a */
        public final int f7310a;

        /* renamed from: b */
        public final int f7311b;

        /* renamed from: c */
        public final long f7312c;

        /* renamed from: d */
        public final byte[] f7313d;

        public C1063d(int i, int i2, byte[] bArr) {
            this(i, i2, -1L, bArr);
        }

        /* renamed from: a */
        public static C1063d m4458a(String str) {
            if (str.length() == 1 && str.charAt(0) >= '0' && str.charAt(0) <= '1') {
                return new C1063d(1, 1, new byte[]{(byte) (str.charAt(0) - '0')});
            }
            byte[] bytes = str.getBytes(ExifInterface.f7247n1);
            return new C1063d(1, bytes.length, bytes);
        }

        /* renamed from: b */
        public static C1063d m4459b(double d, ByteOrder byteOrder) {
            return m4460c(new double[]{d}, byteOrder);
        }

        /* renamed from: c */
        public static C1063d m4460c(double[] dArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.f7173L0[12] * dArr.length]);
            wrap.order(byteOrder);
            for (double d : dArr) {
                wrap.putDouble(d);
            }
            return new C1063d(12, dArr.length, wrap.array());
        }

        /* renamed from: d */
        public static C1063d m4461d(int i, ByteOrder byteOrder) {
            return m4462e(new int[]{i}, byteOrder);
        }

        /* renamed from: e */
        public static C1063d m4462e(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.f7173L0[9] * iArr.length]);
            wrap.order(byteOrder);
            for (int i : iArr) {
                wrap.putInt(i);
            }
            return new C1063d(9, iArr.length, wrap.array());
        }

        /* renamed from: f */
        public static C1063d m4463f(C1065f c1065f, ByteOrder byteOrder) {
            return m4464g(new C1065f[]{c1065f}, byteOrder);
        }

        /* renamed from: g */
        public static C1063d m4464g(C1065f[] c1065fArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.f7173L0[10] * c1065fArr.length]);
            wrap.order(byteOrder);
            for (C1065f c1065f : c1065fArr) {
                wrap.putInt((int) c1065f.f7318a);
                wrap.putInt((int) c1065f.f7319b);
            }
            return new C1063d(10, c1065fArr.length, wrap.array());
        }

        /* renamed from: h */
        public static C1063d m4465h(String str) {
            byte[] bytes = (str + (char) 0).getBytes(ExifInterface.f7247n1);
            return new C1063d(2, bytes.length, bytes);
        }

        /* renamed from: i */
        public static C1063d m4466i(long j, ByteOrder byteOrder) {
            return m4467j(new long[]{j}, byteOrder);
        }

        /* renamed from: j */
        public static C1063d m4467j(long[] jArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.f7173L0[4] * jArr.length]);
            wrap.order(byteOrder);
            for (long j : jArr) {
                wrap.putInt((int) j);
            }
            return new C1063d(4, jArr.length, wrap.array());
        }

        /* renamed from: k */
        public static C1063d m4468k(C1065f c1065f, ByteOrder byteOrder) {
            return m4469l(new C1065f[]{c1065f}, byteOrder);
        }

        /* renamed from: l */
        public static C1063d m4469l(C1065f[] c1065fArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.f7173L0[5] * c1065fArr.length]);
            wrap.order(byteOrder);
            for (C1065f c1065f : c1065fArr) {
                wrap.putInt((int) c1065f.f7318a);
                wrap.putInt((int) c1065f.f7319b);
            }
            return new C1063d(5, c1065fArr.length, wrap.array());
        }

        /* renamed from: m */
        public static C1063d m4470m(int i, ByteOrder byteOrder) {
            return m4471n(new int[]{i}, byteOrder);
        }

        /* renamed from: n */
        public static C1063d m4471n(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.f7173L0[3] * iArr.length]);
            wrap.order(byteOrder);
            for (int i : iArr) {
                wrap.putShort((short) i);
            }
            return new C1063d(3, iArr.length, wrap.array());
        }

        /* renamed from: o */
        public double m4472o(ByteOrder byteOrder) {
            Object m4475r = m4475r(byteOrder);
            if (m4475r == null) {
                throw new NumberFormatException("NULL can't be converted to a double value");
            }
            if (m4475r instanceof String) {
                return Double.parseDouble((String) m4475r);
            }
            if (m4475r instanceof long[]) {
                if (((long[]) m4475r).length == 1) {
                    return r3[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (m4475r instanceof int[]) {
                if (((int[]) m4475r).length == 1) {
                    return r3[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (m4475r instanceof double[]) {
                double[] dArr = (double[]) m4475r;
                if (dArr.length == 1) {
                    return dArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (!(m4475r instanceof C1065f[])) {
                throw new NumberFormatException("Couldn't find a double value");
            }
            C1065f[] c1065fArr = (C1065f[]) m4475r;
            if (c1065fArr.length == 1) {
                return c1065fArr[0].m4478a();
            }
            throw new NumberFormatException("There are more than one component");
        }

        /* renamed from: p */
        public int m4473p(ByteOrder byteOrder) {
            Object m4475r = m4475r(byteOrder);
            if (m4475r == null) {
                throw new NumberFormatException("NULL can't be converted to a integer value");
            }
            if (m4475r instanceof String) {
                return Integer.parseInt((String) m4475r);
            }
            if (m4475r instanceof long[]) {
                long[] jArr = (long[]) m4475r;
                if (jArr.length == 1) {
                    return (int) jArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (!(m4475r instanceof int[])) {
                throw new NumberFormatException("Couldn't find a integer value");
            }
            int[] iArr = (int[]) m4475r;
            if (iArr.length == 1) {
                return iArr[0];
            }
            throw new NumberFormatException("There are more than one component");
        }

        /* renamed from: q */
        public String m4474q(ByteOrder byteOrder) {
            Object m4475r = m4475r(byteOrder);
            if (m4475r == null) {
                return null;
            }
            if (m4475r instanceof String) {
                return (String) m4475r;
            }
            StringBuilder sb = new StringBuilder();
            int i = 0;
            if (m4475r instanceof long[]) {
                long[] jArr = (long[]) m4475r;
                while (i < jArr.length) {
                    sb.append(jArr[i]);
                    i++;
                    if (i != jArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (m4475r instanceof int[]) {
                int[] iArr = (int[]) m4475r;
                while (i < iArr.length) {
                    sb.append(iArr[i]);
                    i++;
                    if (i != iArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (m4475r instanceof double[]) {
                double[] dArr = (double[]) m4475r;
                while (i < dArr.length) {
                    sb.append(dArr[i]);
                    i++;
                    if (i != dArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (!(m4475r instanceof C1065f[])) {
                return null;
            }
            C1065f[] c1065fArr = (C1065f[]) m4475r;
            while (i < c1065fArr.length) {
                sb.append(c1065fArr[i].f7318a);
                sb.append('/');
                sb.append(c1065fArr[i].f7319b);
                i++;
                if (i != c1065fArr.length) {
                    sb.append(",");
                }
            }
            return sb.toString();
        }

        /* JADX WARN: Not initialized variable reg: 3, insn: 0x0198: MOVE (r2 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:168:0x0198 */
        /* JADX WARN: Removed duplicated region for block: B:171:0x019b A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* renamed from: r */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m4475r(java.nio.ByteOrder r11) {
            /*
                Method dump skipped, instructions count: 448
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.C1063d.m4475r(java.nio.ByteOrder):java.lang.Object");
        }

        /* renamed from: s */
        public int m4476s() {
            return ExifInterface.f7173L0[this.f7310a] * this.f7311b;
        }

        public String toString() {
            return MotionUtils.f31761c + ExifInterface.f7170K0[this.f7310a] + ", data length:" + this.f7313d.length + MotionUtils.f31762d;
        }

        public C1063d(int i, int i2, long j, byte[] bArr) {
            this.f7310a = i;
            this.f7311b = i2;
            this.f7312c = j;
            this.f7313d = bArr;
        }
    }

    /* renamed from: androidx.exifinterface.media.ExifInterface$f */
    /* loaded from: classes3.dex */
    public static class C1065f {

        /* renamed from: a */
        public final long f7318a;

        /* renamed from: b */
        public final long f7319b;

        public C1065f(double d) {
            this((long) (d * 10000.0d), 10000L);
        }

        /* renamed from: a */
        public double m4478a() {
            return this.f7318a / this.f7319b;
        }

        public String toString() {
            return this.f7318a + "/" + this.f7319b;
        }

        public C1065f(long j, long j2) {
            if (j2 == 0) {
                this.f7318a = 0L;
                this.f7319b = 1L;
            } else {
                this.f7318a = j;
                this.f7319b = j2;
            }
        }
    }

    static {
        C1064e[] c1064eArr = {new C1064e(TAG_NEW_SUBFILE_TYPE, 254, 4), new C1064e(TAG_SUBFILE_TYPE, 255, 4), new C1064e(TAG_IMAGE_WIDTH, 256, 3, 4), new C1064e(TAG_IMAGE_LENGTH, 257, 3, 4), new C1064e(TAG_BITS_PER_SAMPLE, 258, 3), new C1064e(TAG_COMPRESSION, 259, 3), new C1064e(TAG_PHOTOMETRIC_INTERPRETATION, 262, 3), new C1064e(TAG_IMAGE_DESCRIPTION, 270, 2), new C1064e(TAG_MAKE, 271, 2), new C1064e("Model", 272, 2), new C1064e(TAG_STRIP_OFFSETS, 273, 3, 4), new C1064e(TAG_ORIENTATION, 274, 3), new C1064e(TAG_SAMPLES_PER_PIXEL, 277, 3), new C1064e(TAG_ROWS_PER_STRIP, 278, 3, 4), new C1064e(TAG_STRIP_BYTE_COUNTS, 279, 3, 4), new C1064e(TAG_X_RESOLUTION, 282, 5), new C1064e(TAG_Y_RESOLUTION, 283, 5), new C1064e(TAG_PLANAR_CONFIGURATION, 284, 3), new C1064e(TAG_RESOLUTION_UNIT, 296, 3), new C1064e(TAG_TRANSFER_FUNCTION, 301, 3), new C1064e(TAG_SOFTWARE, 305, 2), new C1064e(TAG_DATETIME, 306, 2), new C1064e(TAG_ARTIST, 315, 2), new C1064e(TAG_WHITE_POINT, 318, 5), new C1064e(TAG_PRIMARY_CHROMATICITIES, 319, 5), new C1064e(f7139A, 330, 4), new C1064e(TAG_JPEG_INTERCHANGE_FORMAT, 513, 4), new C1064e(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH, 514, 4), new C1064e(TAG_Y_CB_CR_COEFFICIENTS, 529, 5), new C1064e(TAG_Y_CB_CR_SUB_SAMPLING, 530, 3), new C1064e(TAG_Y_CB_CR_POSITIONING, 531, 3), new C1064e(TAG_REFERENCE_BLACK_WHITE, 532, 5), new C1064e(TAG_COPYRIGHT, 33432, 2), new C1064e(f7268x, 34665, 4), new C1064e(f7271y, 34853, 4), new C1064e(TAG_RW2_SENSOR_TOP_BORDER, 4, 4), new C1064e(TAG_RW2_SENSOR_LEFT_BORDER, 5, 4), new C1064e(TAG_RW2_SENSOR_BOTTOM_BORDER, 6, 4), new C1064e(TAG_RW2_SENSOR_RIGHT_BORDER, 7, 4), new C1064e(TAG_RW2_ISO, 23, 3), new C1064e(TAG_RW2_JPG_FROM_RAW, 46, 7), new C1064e(TAG_XMP, 700, 1)};
        f7179N0 = c1064eArr;
        C1064e[] c1064eArr2 = {new C1064e(TAG_EXPOSURE_TIME, 33434, 5), new C1064e(TAG_F_NUMBER, 33437, 5), new C1064e(TAG_EXPOSURE_PROGRAM, 34850, 3), new C1064e(TAG_SPECTRAL_SENSITIVITY, 34852, 2), new C1064e(TAG_PHOTOGRAPHIC_SENSITIVITY, 34855, 3), new C1064e(TAG_OECF, 34856, 7), new C1064e(TAG_SENSITIVITY_TYPE, 34864, 3), new C1064e(TAG_STANDARD_OUTPUT_SENSITIVITY, 34865, 4), new C1064e(TAG_RECOMMENDED_EXPOSURE_INDEX, 34866, 4), new C1064e(TAG_ISO_SPEED, 34867, 4), new C1064e(TAG_ISO_SPEED_LATITUDE_YYY, 34868, 4), new C1064e(TAG_ISO_SPEED_LATITUDE_ZZZ, 34869, 4), new C1064e(TAG_EXIF_VERSION, 36864, 2), new C1064e(TAG_DATETIME_ORIGINAL, 36867, 2), new C1064e(TAG_DATETIME_DIGITIZED, 36868, 2), new C1064e(TAG_OFFSET_TIME, 36880, 2), new C1064e(TAG_OFFSET_TIME_ORIGINAL, 36881, 2), new C1064e(TAG_OFFSET_TIME_DIGITIZED, 36882, 2), new C1064e(TAG_COMPONENTS_CONFIGURATION, 37121, 7), new C1064e(TAG_COMPRESSED_BITS_PER_PIXEL, 37122, 5), new C1064e(TAG_SHUTTER_SPEED_VALUE, 37377, 10), new C1064e(TAG_APERTURE_VALUE, 37378, 5), new C1064e(TAG_BRIGHTNESS_VALUE, 37379, 10), new C1064e(TAG_EXPOSURE_BIAS_VALUE, 37380, 10), new C1064e(TAG_MAX_APERTURE_VALUE, 37381, 5), new C1064e(TAG_SUBJECT_DISTANCE, 37382, 5), new C1064e(TAG_METERING_MODE, 37383, 3), new C1064e(TAG_LIGHT_SOURCE, 37384, 3), new C1064e(TAG_FLASH, 37385, 3), new C1064e(TAG_FOCAL_LENGTH, 37386, 5), new C1064e(TAG_SUBJECT_AREA, 37396, 3), new C1064e(TAG_MAKER_NOTE, 37500, 7), new C1064e(TAG_USER_COMMENT, 37510, 7), new C1064e(TAG_SUBSEC_TIME, 37520, 2), new C1064e(TAG_SUBSEC_TIME_ORIGINAL, 37521, 2), new C1064e(TAG_SUBSEC_TIME_DIGITIZED, 37522, 2), new C1064e(TAG_FLASHPIX_VERSION, 40960, 7), new C1064e(TAG_COLOR_SPACE, 40961, 3), new C1064e(TAG_PIXEL_X_DIMENSION, 40962, 3, 4), new C1064e(TAG_PIXEL_Y_DIMENSION, 40963, 3, 4), new C1064e(TAG_RELATED_SOUND_FILE, 40964, 2), new C1064e(f7274z, 40965, 4), new C1064e(TAG_FLASH_ENERGY, 41483, 5), new C1064e(TAG_SPATIAL_FREQUENCY_RESPONSE, 41484, 7), new C1064e(TAG_FOCAL_PLANE_X_RESOLUTION, 41486, 5), new C1064e(TAG_FOCAL_PLANE_Y_RESOLUTION, 41487, 5), new C1064e(TAG_FOCAL_PLANE_RESOLUTION_UNIT, 41488, 3), new C1064e(TAG_SUBJECT_LOCATION, 41492, 3), new C1064e(TAG_EXPOSURE_INDEX, 41493, 5), new C1064e(TAG_SENSING_METHOD, 41495, 3), new C1064e(TAG_FILE_SOURCE, 41728, 7), new C1064e(TAG_SCENE_TYPE, 41729, 7), new C1064e(TAG_CFA_PATTERN, 41730, 7), new C1064e(TAG_CUSTOM_RENDERED, 41985, 3), new C1064e(TAG_EXPOSURE_MODE, 41986, 3), new C1064e(TAG_WHITE_BALANCE, 41987, 3), new C1064e(TAG_DIGITAL_ZOOM_RATIO, 41988, 5), new C1064e(TAG_FOCAL_LENGTH_IN_35MM_FILM, 41989, 3), new C1064e(TAG_SCENE_CAPTURE_TYPE, 41990, 3), new C1064e(TAG_GAIN_CONTROL, 41991, 3), new C1064e(TAG_CONTRAST, 41992, 3), new C1064e(TAG_SATURATION, 41993, 3), new C1064e(TAG_SHARPNESS, 41994, 3), new C1064e(TAG_DEVICE_SETTING_DESCRIPTION, 41995, 7), new C1064e(TAG_SUBJECT_DISTANCE_RANGE, 41996, 3), new C1064e(TAG_IMAGE_UNIQUE_ID, 42016, 2), new C1064e("CameraOwnerName", 42032, 2), new C1064e(TAG_BODY_SERIAL_NUMBER, 42033, 2), new C1064e(TAG_LENS_SPECIFICATION, 42034, 5), new C1064e(TAG_LENS_MAKE, 42035, 2), new C1064e(TAG_LENS_MODEL, 42036, 2), new C1064e(TAG_GAMMA, 42240, 5), new C1064e(TAG_DNG_VERSION, 50706, 1), new C1064e(TAG_DEFAULT_CROP_SIZE, 50720, 3, 4)};
        f7182O0 = c1064eArr2;
        C1064e[] c1064eArr3 = {new C1064e(TAG_GPS_VERSION_ID, 0, 1), new C1064e(TAG_GPS_LATITUDE_REF, 1, 2), new C1064e(TAG_GPS_LATITUDE, 2, 5, 10), new C1064e(TAG_GPS_LONGITUDE_REF, 3, 2), new C1064e(TAG_GPS_LONGITUDE, 4, 5, 10), new C1064e(TAG_GPS_ALTITUDE_REF, 5, 1), new C1064e(TAG_GPS_ALTITUDE, 6, 5), new C1064e(TAG_GPS_TIMESTAMP, 7, 5), new C1064e(TAG_GPS_SATELLITES, 8, 2), new C1064e(TAG_GPS_STATUS, 9, 2), new C1064e(TAG_GPS_MEASURE_MODE, 10, 2), new C1064e(TAG_GPS_DOP, 11, 5), new C1064e(TAG_GPS_SPEED_REF, 12, 2), new C1064e(TAG_GPS_SPEED, 13, 5), new C1064e(TAG_GPS_TRACK_REF, 14, 2), new C1064e(TAG_GPS_TRACK, 15, 5), new C1064e(TAG_GPS_IMG_DIRECTION_REF, 16, 2), new C1064e(TAG_GPS_IMG_DIRECTION, 17, 5), new C1064e(TAG_GPS_MAP_DATUM, 18, 2), new C1064e(TAG_GPS_DEST_LATITUDE_REF, 19, 2), new C1064e(TAG_GPS_DEST_LATITUDE, 20, 5), new C1064e(TAG_GPS_DEST_LONGITUDE_REF, 21, 2), new C1064e(TAG_GPS_DEST_LONGITUDE, 22, 5), new C1064e(TAG_GPS_DEST_BEARING_REF, 23, 2), new C1064e(TAG_GPS_DEST_BEARING, 24, 5), new C1064e(TAG_GPS_DEST_DISTANCE_REF, 25, 2), new C1064e(TAG_GPS_DEST_DISTANCE, 26, 5), new C1064e(TAG_GPS_PROCESSING_METHOD, 27, 7), new C1064e(TAG_GPS_AREA_INFORMATION, 28, 7), new C1064e(TAG_GPS_DATESTAMP, 29, 2), new C1064e(TAG_GPS_DIFFERENTIAL, 30, 3), new C1064e(TAG_GPS_H_POSITIONING_ERROR, 31, 5)};
        f7185P0 = c1064eArr3;
        C1064e[] c1064eArr4 = {new C1064e(TAG_INTEROPERABILITY_INDEX, 1, 2)};
        f7188Q0 = c1064eArr4;
        C1064e[] c1064eArr5 = {new C1064e(TAG_NEW_SUBFILE_TYPE, 254, 4), new C1064e(TAG_SUBFILE_TYPE, 255, 4), new C1064e(TAG_THUMBNAIL_IMAGE_WIDTH, 256, 3, 4), new C1064e(TAG_THUMBNAIL_IMAGE_LENGTH, 257, 3, 4), new C1064e(TAG_BITS_PER_SAMPLE, 258, 3), new C1064e(TAG_COMPRESSION, 259, 3), new C1064e(TAG_PHOTOMETRIC_INTERPRETATION, 262, 3), new C1064e(TAG_IMAGE_DESCRIPTION, 270, 2), new C1064e(TAG_MAKE, 271, 2), new C1064e("Model", 272, 2), new C1064e(TAG_STRIP_OFFSETS, 273, 3, 4), new C1064e(TAG_THUMBNAIL_ORIENTATION, 274, 3), new C1064e(TAG_SAMPLES_PER_PIXEL, 277, 3), new C1064e(TAG_ROWS_PER_STRIP, 278, 3, 4), new C1064e(TAG_STRIP_BYTE_COUNTS, 279, 3, 4), new C1064e(TAG_X_RESOLUTION, 282, 5), new C1064e(TAG_Y_RESOLUTION, 283, 5), new C1064e(TAG_PLANAR_CONFIGURATION, 284, 3), new C1064e(TAG_RESOLUTION_UNIT, 296, 3), new C1064e(TAG_TRANSFER_FUNCTION, 301, 3), new C1064e(TAG_SOFTWARE, 305, 2), new C1064e(TAG_DATETIME, 306, 2), new C1064e(TAG_ARTIST, 315, 2), new C1064e(TAG_WHITE_POINT, 318, 5), new C1064e(TAG_PRIMARY_CHROMATICITIES, 319, 5), new C1064e(f7139A, 330, 4), new C1064e(TAG_JPEG_INTERCHANGE_FORMAT, 513, 4), new C1064e(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH, 514, 4), new C1064e(TAG_Y_CB_CR_COEFFICIENTS, 529, 5), new C1064e(TAG_Y_CB_CR_SUB_SAMPLING, 530, 3), new C1064e(TAG_Y_CB_CR_POSITIONING, 531, 3), new C1064e(TAG_REFERENCE_BLACK_WHITE, 532, 5), new C1064e(TAG_COPYRIGHT, 33432, 2), new C1064e(f7268x, 34665, 4), new C1064e(f7271y, 34853, 4), new C1064e(TAG_DNG_VERSION, 50706, 1), new C1064e(TAG_DEFAULT_CROP_SIZE, 50720, 3, 4)};
        f7191R0 = c1064eArr5;
        f7194S0 = new C1064e(TAG_STRIP_OFFSETS, 273, 3);
        C1064e[] c1064eArr6 = {new C1064e(TAG_ORF_THUMBNAIL_IMAGE, 256, 7), new C1064e(f7142B, 8224, 4), new C1064e(f7145C, 8256, 4)};
        f7197T0 = c1064eArr6;
        C1064e[] c1064eArr7 = {new C1064e(TAG_ORF_PREVIEW_IMAGE_START, 257, 4), new C1064e(TAG_ORF_PREVIEW_IMAGE_LENGTH, 258, 4)};
        f7200U0 = c1064eArr7;
        C1064e[] c1064eArr8 = {new C1064e(TAG_ORF_ASPECT_FRAME, 4371, 3)};
        f7203V0 = c1064eArr8;
        C1064e[] c1064eArr9 = {new C1064e(TAG_COLOR_SPACE, 55, 3)};
        f7206W0 = c1064eArr9;
        C1064e[][] c1064eArr10 = {c1064eArr, c1064eArr2, c1064eArr3, c1064eArr4, c1064eArr5, c1064eArr, c1064eArr6, c1064eArr7, c1064eArr8, c1064eArr9};
        f7235h1 = c1064eArr10;
        f7237i1 = new C1064e[]{new C1064e(f7139A, 330, 4), new C1064e(f7268x, 34665, 4), new C1064e(f7271y, 34853, 4), new C1064e(f7274z, 40965, 4), new C1064e(f7142B, 8224, 1), new C1064e(f7145C, 8256, 1)};
        f7239j1 = new HashMap[c1064eArr10.length];
        f7241k1 = new HashMap[c1064eArr10.length];
        f7243l1 = new HashSet<>(Arrays.asList(TAG_F_NUMBER, TAG_DIGITAL_ZOOM_RATIO, TAG_EXPOSURE_TIME, TAG_SUBJECT_DISTANCE, TAG_GPS_TIMESTAMP));
        f7245m1 = new HashMap<>();
        Charset forName = Charset.forName("US-ASCII");
        f7247n1 = forName;
        f7249o1 = DefaultImageHeaderParser.f15009g.getBytes(forName);
        f7251p1 = "http://ns.adobe.com/xap/1.0/\u0000".getBytes(forName);
        Locale locale = Locale.US;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss", locale);
        f7252q0 = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(DateTimeUtil.FORMAT_YYYYMMDD_HHMMSS, locale);
        f7254r0 = simpleDateFormat2;
        simpleDateFormat2.setTimeZone(TimeZone.getTimeZone("UTC"));
        int i = 0;
        while (true) {
            C1064e[][] c1064eArr11 = f7235h1;
            if (i >= c1064eArr11.length) {
                HashMap<Integer, Integer> hashMap = f7245m1;
                C1064e[] c1064eArr12 = f7237i1;
                hashMap.put(Integer.valueOf(c1064eArr12[0].f7314a), 5);
                hashMap.put(Integer.valueOf(c1064eArr12[1].f7314a), 1);
                hashMap.put(Integer.valueOf(c1064eArr12[2].f7314a), 2);
                hashMap.put(Integer.valueOf(c1064eArr12[3].f7314a), 3);
                hashMap.put(Integer.valueOf(c1064eArr12[4].f7314a), 7);
                hashMap.put(Integer.valueOf(c1064eArr12[5].f7314a), 8);
                f7213Y1 = Pattern.compile(".*[1-9].*");
                f7216Z1 = Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2})$");
                f7219a2 = Pattern.compile("^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                f7222b2 = Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                return;
            }
            f7239j1[i] = new HashMap<>();
            f7241k1[i] = new HashMap<>();
            for (C1064e c1064e : c1064eArr11[i]) {
                f7239j1[i].put(Integer.valueOf(c1064e.f7314a), c1064e);
                f7241k1[i].put(c1064e.f7315b, c1064e);
            }
            i++;
        }
    }

    public ExifInterface(@NonNull File file) throws IOException {
        C1064e[][] c1064eArr = f7235h1;
        this.f7282f = new HashMap[c1064eArr.length];
        this.f7283g = new HashSet(c1064eArr.length);
        this.f7284h = ByteOrder.BIG_ENDIAN;
        if (file != null) {
            m4449t(file.getAbsolutePath());
            return;
        }
        throw new NullPointerException("file cannot be null");
    }

    /* renamed from: B */
    public static boolean m4403B(FileDescriptor fileDescriptor) {
        try {
            C1067a.a.m4489c(fileDescriptor, 0L, OsConstants.SEEK_CUR);
            return true;
        } catch (Exception unused) {
            if (!f7265w) {
                return false;
            }
            Log.d(f7262v, "The file descriptor for the given input is not seekable");
            return false;
        }
    }

    /* renamed from: D */
    public static boolean m4404D(int i) {
        return i == 4 || i == 13 || i == 14;
    }

    /* renamed from: H */
    public static Long m4405H(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        if (str != null && f7213Y1.matcher(str).matches()) {
            ParsePosition parsePosition = new ParsePosition(0);
            try {
                Date parse = f7252q0.parse(str, parsePosition);
                if (parse == null && (parse = f7254r0.parse(str, parsePosition)) == null) {
                    return null;
                }
                long time = parse.getTime();
                if (str3 != null) {
                    int i = 1;
                    String substring = str3.substring(0, 1);
                    int parseInt = Integer.parseInt(str3.substring(1, 3));
                    int parseInt2 = Integer.parseInt(str3.substring(4, 6));
                    if (("+".equals(substring) || "-".equals(substring)) && ":".equals(str3.substring(3, 4)) && parseInt <= 14) {
                        int i2 = ((parseInt * 60) + parseInt2) * 60 * 1000;
                        if (!"-".equals(substring)) {
                            i = -1;
                        }
                        time += i2 * i;
                    }
                }
                if (str2 != null) {
                    time += C1067a.m4485g(str2);
                }
                return Long.valueOf(time);
            } catch (IllegalArgumentException unused) {
            }
        }
        return null;
    }

    /* renamed from: U */
    public static boolean m4406U(int i) {
        return (i == 4 || i == 9 || i == 13 || i == 14) ? false : true;
    }

    /* renamed from: c */
    public static double m4407c(String str, String str2) {
        try {
            String[] split = str.split(",", -1);
            String[] split2 = split[0].split("/", -1);
            double parseDouble = Double.parseDouble(split2[0].trim()) / Double.parseDouble(split2[1].trim());
            String[] split3 = split[1].split("/", -1);
            double parseDouble2 = Double.parseDouble(split3[0].trim()) / Double.parseDouble(split3[1].trim());
            String[] split4 = split[2].split("/", -1);
            double parseDouble3 = parseDouble + (parseDouble2 / 60.0d) + ((Double.parseDouble(split4[0].trim()) / Double.parseDouble(split4[1].trim())) / 3600.0d);
            if (!str2.equals("S") && !str2.equals("W")) {
                if (!str2.equals("N") && !str2.equals("E")) {
                    throw new IllegalArgumentException();
                }
                return parseDouble3;
            }
            return -parseDouble3;
        } catch (ArrayIndexOutOfBoundsException | NumberFormatException unused) {
            throw new IllegalArgumentException();
        }
    }

    public static boolean isSupportedMimeType(@NonNull String str) {
        if (str == null) {
            throw new NullPointerException("mimeType shouldn't be null");
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.hashCode();
        char c = 65535;
        switch (lowerCase.hashCode()) {
            case -1875291391:
                if (lowerCase.equals("image/x-fuji-raf")) {
                    c = 0;
                    break;
                }
                break;
            case -1635437028:
                if (lowerCase.equals("image/x-samsung-srw")) {
                    c = 1;
                    break;
                }
                break;
            case -1594371159:
                if (lowerCase.equals("image/x-sony-arw")) {
                    c = 2;
                    break;
                }
                break;
            case -1487464693:
                if (lowerCase.equals("image/heic")) {
                    c = 3;
                    break;
                }
                break;
            case -1487464690:
                if (lowerCase.equals("image/heif")) {
                    c = 4;
                    break;
                }
                break;
            case -1487394660:
                if (lowerCase.equals("image/jpeg")) {
                    c = 5;
                    break;
                }
                break;
            case -1487018032:
                if (lowerCase.equals("image/webp")) {
                    c = 6;
                    break;
                }
                break;
            case -1423313290:
                if (lowerCase.equals("image/x-adobe-dng")) {
                    c = 7;
                    break;
                }
                break;
            case -985160897:
                if (lowerCase.equals("image/x-panasonic-rw2")) {
                    c = '\b';
                    break;
                }
                break;
            case -879258763:
                if (lowerCase.equals("image/png")) {
                    c = '\t';
                    break;
                }
                break;
            case -332763809:
                if (lowerCase.equals("image/x-pentax-pef")) {
                    c = '\n';
                    break;
                }
                break;
            case 1378106698:
                if (lowerCase.equals("image/x-olympus-orf")) {
                    c = 11;
                    break;
                }
                break;
            case 2099152104:
                if (lowerCase.equals("image/x-nikon-nef")) {
                    c = '\f';
                    break;
                }
                break;
            case 2099152524:
                if (lowerCase.equals("image/x-nikon-nrw")) {
                    c = '\r';
                    break;
                }
                break;
            case 2111234748:
                if (lowerCase.equals("image/x-canon-cr2")) {
                    c = 14;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
            case 11:
            case '\f':
            case '\r':
            case 14:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: q */
    public static Pair<Integer, Integer> m4408q(String str) {
        if (str.contains(",")) {
            String[] split = str.split(",", -1);
            Pair<Integer, Integer> m4408q = m4408q(split[0]);
            if (((Integer) m4408q.first).intValue() == 2) {
                return m4408q;
            }
            for (int i = 1; i < split.length; i++) {
                Pair<Integer, Integer> m4408q2 = m4408q(split[i]);
                int intValue = (((Integer) m4408q2.first).equals(m4408q.first) || ((Integer) m4408q2.second).equals(m4408q.first)) ? ((Integer) m4408q.first).intValue() : -1;
                int intValue2 = (((Integer) m4408q.second).intValue() == -1 || !(((Integer) m4408q2.first).equals(m4408q.second) || ((Integer) m4408q2.second).equals(m4408q.second))) ? -1 : ((Integer) m4408q.second).intValue();
                if (intValue == -1 && intValue2 == -1) {
                    return new Pair<>(2, -1);
                }
                if (intValue == -1) {
                    m4408q = new Pair<>(Integer.valueOf(intValue2), -1);
                } else if (intValue2 == -1) {
                    m4408q = new Pair<>(Integer.valueOf(intValue), -1);
                }
            }
            return m4408q;
        }
        if (!str.contains("/")) {
            try {
                try {
                    Long valueOf = Long.valueOf(Long.parseLong(str));
                    return (valueOf.longValue() < 0 || valueOf.longValue() > WebSocketProtocol.PAYLOAD_SHORT_MAX) ? valueOf.longValue() < 0 ? new Pair<>(9, -1) : new Pair<>(4, -1) : new Pair<>(3, 4);
                } catch (NumberFormatException unused) {
                    return new Pair<>(2, -1);
                }
            } catch (NumberFormatException unused2) {
                Double.parseDouble(str);
                return new Pair<>(12, -1);
            }
        }
        String[] split2 = str.split("/", -1);
        if (split2.length == 2) {
            try {
                long parseDouble = (long) Double.parseDouble(split2[0]);
                long parseDouble2 = (long) Double.parseDouble(split2[1]);
                if (parseDouble >= 0 && parseDouble2 >= 0) {
                    if (parseDouble <= 2147483647L && parseDouble2 <= 2147483647L) {
                        return new Pair<>(10, 5);
                    }
                    return new Pair<>(5, -1);
                }
                return new Pair<>(10, -1);
            } catch (NumberFormatException unused3) {
            }
        }
        return new Pair<>(2, -1);
    }

    /* renamed from: u */
    public static boolean m4409u(BufferedInputStream bufferedInputStream) throws IOException {
        byte[] bArr = f7249o1;
        bufferedInputStream.mark(bArr.length);
        byte[] bArr2 = new byte[bArr.length];
        bufferedInputStream.read(bArr2);
        bufferedInputStream.reset();
        int i = 0;
        while (true) {
            byte[] bArr3 = f7249o1;
            if (i >= bArr3.length) {
                return true;
            }
            if (bArr2[i] != bArr3[i]) {
                return false;
            }
            i++;
        }
    }

    /* renamed from: w */
    public static boolean m4410w(byte[] bArr) throws IOException {
        int i = 0;
        while (true) {
            byte[] bArr2 = f7160H;
            if (i >= bArr2.length) {
                return true;
            }
            if (bArr[i] != bArr2[i]) {
                return false;
            }
            i++;
        }
    }

    /* renamed from: A */
    public final boolean m4411A(byte[] bArr) throws IOException {
        C1061b c1061b = null;
        try {
            C1061b c1061b2 = new C1061b(bArr);
            try {
                ByteOrder m4418K = m4418K(c1061b2);
                this.f7284h = m4418K;
                c1061b2.setByteOrder(m4418K);
                boolean z = c1061b2.readShort() == 85;
                c1061b2.close();
                return z;
            } catch (Exception unused) {
                c1061b = c1061b2;
                if (c1061b != null) {
                    c1061b.close();
                }
                return false;
            } catch (Throwable th) {
                th = th;
                c1061b = c1061b2;
                if (c1061b != null) {
                    c1061b.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: C */
    public final boolean m4412C(HashMap hashMap) throws IOException {
        C1063d c1063d;
        int m4473p;
        C1063d c1063d2 = (C1063d) hashMap.get(TAG_BITS_PER_SAMPLE);
        if (c1063d2 != null) {
            int[] iArr = (int[]) c1063d2.m4475r(this.f7284h);
            int[] iArr2 = BITS_PER_SAMPLE_RGB;
            if (Arrays.equals(iArr2, iArr)) {
                return true;
            }
            if (this.f7280d == 3 && (c1063d = (C1063d) hashMap.get(TAG_PHOTOMETRIC_INTERPRETATION)) != null && (((m4473p = c1063d.m4473p(this.f7284h)) == 1 && Arrays.equals(iArr, BITS_PER_SAMPLE_GREYSCALE_2)) || (m4473p == 6 && Arrays.equals(iArr, iArr2)))) {
                return true;
            }
        }
        if (!f7265w) {
            return false;
        }
        Log.d(f7262v, "Unsupported data type value");
        return false;
    }

    /* renamed from: E */
    public final boolean m4413E(HashMap hashMap) throws IOException {
        C1063d c1063d = (C1063d) hashMap.get(TAG_IMAGE_LENGTH);
        C1063d c1063d2 = (C1063d) hashMap.get(TAG_IMAGE_WIDTH);
        if (c1063d == null || c1063d2 == null) {
            return false;
        }
        return c1063d.m4473p(this.f7284h) <= 512 && c1063d2.m4473p(this.f7284h) <= 512;
    }

    /* renamed from: F */
    public final boolean m4414F(byte[] bArr) throws IOException {
        int i = 0;
        while (true) {
            byte[] bArr2 = f7223c0;
            if (i >= bArr2.length) {
                int i2 = 0;
                while (true) {
                    byte[] bArr3 = f7226d0;
                    if (i2 >= bArr3.length) {
                        return true;
                    }
                    if (bArr[f7223c0.length + i2 + 4] != bArr3[i2]) {
                        return false;
                    }
                    i2++;
                }
            } else {
                if (bArr[i] != bArr2[i]) {
                    return false;
                }
                i++;
            }
        }
    }

    /* renamed from: G */
    public final void m4415G(@NonNull InputStream inputStream) {
        if (inputStream == null) {
            throw new NullPointerException("inputstream shouldn't be null");
        }
        for (int i = 0; i < f7235h1.length; i++) {
            try {
                try {
                    this.f7282f[i] = new HashMap<>();
                } catch (IOException | UnsupportedOperationException e) {
                    boolean z = f7265w;
                    if (z) {
                        Log.w(f7262v, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface.", e);
                    }
                    m4432a();
                    if (!z) {
                        return;
                    }
                }
            } finally {
                m4432a();
                if (f7265w) {
                    m4417J();
                }
            }
        }
        if (!this.f7281e) {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 5000);
            this.f7280d = m4439i(bufferedInputStream);
            inputStream = bufferedInputStream;
        }
        if (m4406U(this.f7280d)) {
            C1066g c1066g = new C1066g(inputStream);
            if (this.f7281e) {
                m4445o(c1066g);
            } else {
                int i2 = this.f7280d;
                if (i2 == 12) {
                    m4437g(c1066g);
                } else if (i2 == 7) {
                    m4440j(c1066g);
                } else if (i2 == 10) {
                    m4444n(c1066g);
                } else {
                    m4443m(c1066g);
                }
            }
            c1066g.seek(this.f7292p);
            m4427T(c1066g);
        } else {
            C1061b c1061b = new C1061b(inputStream);
            int i3 = this.f7280d;
            if (i3 == 4) {
                m4438h(c1061b, 0, 0);
            } else if (i3 == 13) {
                m4441k(c1061b);
            } else if (i3 == 9) {
                m4442l(c1061b);
            } else if (i3 == 14) {
                m4446p(c1061b);
            }
        }
    }

    /* renamed from: I */
    public final void m4416I(C1061b c1061b) throws IOException {
        ByteOrder m4418K = m4418K(c1061b);
        this.f7284h = m4418K;
        c1061b.setByteOrder(m4418K);
        int readUnsignedShort = c1061b.readUnsignedShort();
        int i = this.f7280d;
        if (i != 7 && i != 10 && readUnsignedShort != 42) {
            throw new IOException("Invalid start code: " + Integer.toHexString(readUnsignedShort));
        }
        int readInt = c1061b.readInt();
        if (readInt < 8) {
            throw new IOException("Invalid first Ifd offset: " + readInt);
        }
        int i2 = readInt - 8;
        if (i2 > 0) {
            c1061b.m4454f(i2);
        }
    }

    /* renamed from: J */
    public final void m4417J() {
        for (int i = 0; i < this.f7282f.length; i++) {
            Log.d(f7262v, "The size of tag group[" + i + "]: " + this.f7282f[i].size());
            for (Map.Entry<String, C1063d> entry : this.f7282f[i].entrySet()) {
                C1063d value = entry.getValue();
                Log.d(f7262v, "tagName: " + entry.getKey() + ", tagType: " + value.toString() + ", tagValue: '" + value.m4474q(this.f7284h) + CloudStorageConstants.SINGLE_QUOTES);
            }
        }
    }

    /* renamed from: K */
    public final ByteOrder m4418K(C1061b c1061b) throws IOException {
        short readShort = c1061b.readShort();
        if (readShort == 18761) {
            if (f7265w) {
                Log.d(f7262v, "readExifSegment: Byte Align II");
            }
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (readShort == 19789) {
            if (f7265w) {
                Log.d(f7262v, "readExifSegment: Byte Align MM");
            }
            return ByteOrder.BIG_ENDIAN;
        }
        throw new IOException("Invalid byte order: " + Integer.toHexString(readShort));
    }

    /* renamed from: L */
    public final void m4419L(byte[] bArr, int i) throws IOException {
        C1066g c1066g = new C1066g(bArr);
        m4416I(c1066g);
        m4420M(c1066g, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x026f  */
    /* renamed from: M */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4420M(androidx.exifinterface.media.ExifInterface.C1066g r28, int r29) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 912
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.m4420M(androidx.exifinterface.media.ExifInterface$g, int):void");
    }

    /* renamed from: N */
    public final void m4421N(String str) {
        for (int i = 0; i < f7235h1.length; i++) {
            this.f7282f[i].remove(str);
        }
    }

    /* renamed from: O */
    public final void m4422O(int i, String str, String str2) {
        if (this.f7282f[i].isEmpty() || this.f7282f[i].get(str) == null) {
            return;
        }
        HashMap<String, C1063d> hashMap = this.f7282f[i];
        hashMap.put(str2, hashMap.get(str));
        this.f7282f[i].remove(str);
    }

    /* renamed from: P */
    public final void m4423P(C1066g c1066g, int i) throws IOException {
        C1063d c1063d = this.f7282f[i].get(TAG_IMAGE_LENGTH);
        C1063d c1063d2 = this.f7282f[i].get(TAG_IMAGE_WIDTH);
        if (c1063d == null || c1063d2 == null) {
            C1063d c1063d3 = this.f7282f[i].get(TAG_JPEG_INTERCHANGE_FORMAT);
            C1063d c1063d4 = this.f7282f[i].get(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH);
            if (c1063d3 == null || c1063d4 == null) {
                return;
            }
            int m4473p = c1063d3.m4473p(this.f7284h);
            int m4473p2 = c1063d3.m4473p(this.f7284h);
            c1066g.seek(m4473p);
            byte[] bArr = new byte[m4473p2];
            c1066g.read(bArr);
            m4438h(new C1061b(bArr), m4473p, i);
        }
    }

    /* renamed from: Q */
    public final void m4424Q(InputStream inputStream, OutputStream outputStream) throws IOException {
        if (f7265w) {
            Log.d(f7262v, "saveJpegAttributes starting with (inputStream: " + inputStream + ", outputStream: " + outputStream + MotionUtils.f31762d);
        }
        C1061b c1061b = new C1061b(inputStream);
        C1062c c1062c = new C1062c(outputStream, ByteOrder.BIG_ENDIAN);
        if (c1061b.readByte() != -1) {
            throw new IOException("Invalid marker");
        }
        c1062c.writeByte(-1);
        if (c1061b.readByte() != -40) {
            throw new IOException("Invalid marker");
        }
        c1062c.writeByte(-40);
        C1063d remove = (getAttribute(TAG_XMP) == null || !this.f7297u) ? null : this.f7282f[0].remove(TAG_XMP);
        c1062c.writeByte(-1);
        c1062c.writeByte(-31);
        m4431Y(c1062c);
        if (remove != null) {
            this.f7282f[0].put(TAG_XMP, remove);
        }
        byte[] bArr = new byte[4096];
        while (c1061b.readByte() == -1) {
            byte readByte = c1061b.readByte();
            if (readByte == -39 || readByte == -38) {
                c1062c.writeByte(-1);
                c1062c.writeByte(readByte);
                C1067a.m4483e(c1061b, c1062c);
                return;
            }
            if (readByte != -31) {
                c1062c.writeByte(-1);
                c1062c.writeByte(readByte);
                int readUnsignedShort = c1061b.readUnsignedShort();
                c1062c.m4457w(readUnsignedShort);
                int i = readUnsignedShort - 2;
                if (i < 0) {
                    throw new IOException("Invalid length");
                }
                while (i > 0) {
                    int read = c1061b.read(bArr, 0, Math.min(i, 4096));
                    if (read >= 0) {
                        c1062c.write(bArr, 0, read);
                        i -= read;
                    }
                }
            } else {
                int readUnsignedShort2 = c1061b.readUnsignedShort() - 2;
                if (readUnsignedShort2 < 0) {
                    throw new IOException("Invalid length");
                }
                byte[] bArr2 = new byte[6];
                if (readUnsignedShort2 >= 6) {
                    if (c1061b.read(bArr2) != 6) {
                        throw new IOException("Invalid exif");
                    }
                    if (Arrays.equals(bArr2, f7249o1)) {
                        c1061b.m4454f(readUnsignedShort2 - 6);
                    }
                }
                c1062c.writeByte(-1);
                c1062c.writeByte(readByte);
                c1062c.m4457w(readUnsignedShort2 + 2);
                if (readUnsignedShort2 >= 6) {
                    readUnsignedShort2 -= 6;
                    c1062c.write(bArr2);
                }
                while (readUnsignedShort2 > 0) {
                    int read2 = c1061b.read(bArr, 0, Math.min(readUnsignedShort2, 4096));
                    if (read2 >= 0) {
                        c1062c.write(bArr, 0, read2);
                        readUnsignedShort2 -= read2;
                    }
                }
            }
        }
        throw new IOException("Invalid marker");
    }

    /* renamed from: R */
    public final void m4425R(InputStream inputStream, OutputStream outputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream;
        if (f7265w) {
            Log.d(f7262v, "savePngAttributes starting with (inputStream: " + inputStream + ", outputStream: " + outputStream + MotionUtils.f31762d);
        }
        C1061b c1061b = new C1061b(inputStream);
        ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
        C1062c c1062c = new C1062c(outputStream, byteOrder);
        byte[] bArr = f7205W;
        C1067a.m4484f(c1061b, c1062c, bArr.length);
        int i = this.f7292p;
        if (i == 0) {
            int readInt = c1061b.readInt();
            c1062c.writeInt(readInt);
            C1067a.m4484f(c1061b, c1062c, readInt + 4 + 4);
        } else {
            C1067a.m4484f(c1061b, c1062c, ((i - bArr.length) - 4) - 4);
            c1061b.m4454f(c1061b.readInt() + 4 + 4);
        }
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
        } catch (Throwable th) {
            th = th;
        }
        try {
            C1062c c1062c2 = new C1062c(byteArrayOutputStream, byteOrder);
            m4431Y(c1062c2);
            byte[] byteArray = ((ByteArrayOutputStream) c1062c2.f7307e).toByteArray();
            c1062c.write(byteArray);
            CRC32 crc32 = new CRC32();
            crc32.update(byteArray, 4, byteArray.length - 4);
            c1062c.writeInt((int) crc32.getValue());
            C1067a.m4481c(byteArrayOutputStream);
            C1067a.m4483e(c1061b, c1062c);
        } catch (Throwable th2) {
            th = th2;
            byteArrayOutputStream2 = byteArrayOutputStream;
            C1067a.m4481c(byteArrayOutputStream2);
            throw th;
        }
    }

    /* renamed from: S */
    public final void m4426S(InputStream inputStream, OutputStream outputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream;
        int i;
        int i2;
        int i3;
        int i4;
        if (f7265w) {
            Log.d(f7262v, "saveWebpAttributes starting with (inputStream: " + inputStream + ", outputStream: " + outputStream + MotionUtils.f31762d);
        }
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        C1061b c1061b = new C1061b(inputStream, byteOrder);
        C1062c c1062c = new C1062c(outputStream, byteOrder);
        byte[] bArr = f7223c0;
        C1067a.m4484f(c1061b, c1062c, bArr.length);
        byte[] bArr2 = f7226d0;
        c1061b.m4454f(bArr2.length + 4);
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            C1062c c1062c2 = new C1062c(byteArrayOutputStream, byteOrder);
            int i5 = this.f7292p;
            if (i5 != 0) {
                C1067a.m4484f(c1061b, c1062c2, ((i5 - ((bArr.length + 4) + bArr2.length)) - 4) - 4);
                c1061b.m4454f(4);
                c1061b.m4454f(c1061b.readInt());
                m4431Y(c1062c2);
            } else {
                byte[] bArr3 = new byte[4];
                if (c1061b.read(bArr3) != 4) {
                    throw new IOException("Encountered invalid length while parsing WebP chunk type");
                }
                byte[] bArr4 = f7236i0;
                if (Arrays.equals(bArr3, bArr4)) {
                    int readInt = c1061b.readInt();
                    byte[] bArr5 = new byte[readInt % 2 == 1 ? readInt + 1 : readInt];
                    c1061b.read(bArr5);
                    byte b = (byte) (8 | bArr5[0]);
                    bArr5[0] = b;
                    boolean z = ((b >> 1) & 1) == 1;
                    c1062c2.write(bArr4);
                    c1062c2.writeInt(readInt);
                    c1062c2.write(bArr5);
                    if (z) {
                        m4434d(c1061b, c1062c2, f7242l0, null);
                        while (true) {
                            byte[] bArr6 = new byte[4];
                            inputStream.read(bArr6);
                            if (!Arrays.equals(bArr6, f7244m0)) {
                                break;
                            } else {
                                m4435e(c1061b, c1062c2, bArr6);
                            }
                        }
                        m4431Y(c1062c2);
                    } else {
                        m4434d(c1061b, c1062c2, f7240k0, f7238j0);
                        m4431Y(c1062c2);
                    }
                } else {
                    byte[] bArr7 = f7240k0;
                    if (Arrays.equals(bArr3, bArr7) || Arrays.equals(bArr3, f7238j0)) {
                        int readInt2 = c1061b.readInt();
                        int i6 = readInt2 % 2 == 1 ? readInt2 + 1 : readInt2;
                        byte[] bArr8 = new byte[3];
                        if (Arrays.equals(bArr3, bArr7)) {
                            c1061b.read(bArr8);
                            byte[] bArr9 = new byte[3];
                            if (c1061b.read(bArr9) != 3 || !Arrays.equals(f7232g0, bArr9)) {
                                throw new IOException("Encountered error while checking VP8 signature");
                            }
                            i = c1061b.readInt();
                            i2 = (i << 18) >> 18;
                            i3 = (i << 2) >> 18;
                            i6 -= 10;
                            i4 = 0;
                        } else if (!Arrays.equals(bArr3, f7238j0)) {
                            i = 0;
                            i2 = 0;
                            i3 = 0;
                            i4 = 0;
                        } else {
                            if (c1061b.readByte() != 47) {
                                throw new IOException("Encountered error while checking VP8L signature");
                            }
                            i = c1061b.readInt();
                            i4 = i & 8;
                            i6 -= 5;
                            i3 = ((i << 4) >> 18) + 1;
                            i2 = ((i << 18) >> 18) + 1;
                        }
                        c1062c2.write(bArr4);
                        c1062c2.writeInt(10);
                        byte[] bArr10 = new byte[10];
                        byte b2 = (byte) (bArr10[0] | 8);
                        bArr10[0] = b2;
                        bArr10[0] = (byte) (b2 | (i4 << 4));
                        int i7 = i2 - 1;
                        int i8 = i3 - 1;
                        bArr10[4] = (byte) i7;
                        bArr10[5] = (byte) (i7 >> 8);
                        bArr10[6] = (byte) (i7 >> 16);
                        bArr10[7] = (byte) i8;
                        bArr10[8] = (byte) (i8 >> 8);
                        bArr10[9] = (byte) (i8 >> 16);
                        c1062c2.write(bArr10);
                        c1062c2.write(bArr3);
                        c1062c2.writeInt(readInt2);
                        if (Arrays.equals(bArr3, bArr7)) {
                            c1062c2.write(bArr8);
                            c1062c2.write(f7232g0);
                            c1062c2.writeInt(i);
                        } else if (Arrays.equals(bArr3, f7238j0)) {
                            c1062c2.write(47);
                            c1062c2.writeInt(i);
                        }
                        C1067a.m4484f(c1061b, c1062c2, i6);
                        m4431Y(c1062c2);
                    }
                }
            }
            C1067a.m4483e(c1061b, c1062c2);
            int size = byteArrayOutputStream.size();
            byte[] bArr11 = f7226d0;
            c1062c.writeInt(size + bArr11.length);
            c1062c.write(bArr11);
            byteArrayOutputStream.writeTo(c1062c);
            C1067a.m4481c(byteArrayOutputStream);
        } catch (Exception e2) {
            e = e2;
            throw new IOException("Failed to save WebP file", e);
        } catch (Throwable th2) {
            th = th2;
            byteArrayOutputStream2 = byteArrayOutputStream;
            C1067a.m4481c(byteArrayOutputStream2);
            throw th;
        }
    }

    /* renamed from: T */
    public final void m4427T(C1061b c1061b) throws IOException {
        HashMap<String, C1063d> hashMap = this.f7282f[4];
        C1063d c1063d = hashMap.get(TAG_COMPRESSION);
        if (c1063d == null) {
            this.f7291o = 6;
            m4447r(c1061b, hashMap);
            return;
        }
        int m4473p = c1063d.m4473p(this.f7284h);
        this.f7291o = m4473p;
        if (m4473p != 1) {
            if (m4473p == 6) {
                m4447r(c1061b, hashMap);
                return;
            } else if (m4473p != 7) {
                return;
            }
        }
        if (m4412C(hashMap)) {
            m4448s(c1061b, hashMap);
        }
    }

    /* renamed from: V */
    public final void m4428V(int i, int i2) throws IOException {
        if (this.f7282f[i].isEmpty() || this.f7282f[i2].isEmpty()) {
            if (f7265w) {
                Log.d(f7262v, "Cannot perform swap since only one image data exists");
                return;
            }
            return;
        }
        C1063d c1063d = this.f7282f[i].get(TAG_IMAGE_LENGTH);
        C1063d c1063d2 = this.f7282f[i].get(TAG_IMAGE_WIDTH);
        C1063d c1063d3 = this.f7282f[i2].get(TAG_IMAGE_LENGTH);
        C1063d c1063d4 = this.f7282f[i2].get(TAG_IMAGE_WIDTH);
        if (c1063d == null || c1063d2 == null) {
            if (f7265w) {
                Log.d(f7262v, "First image does not contain valid size information");
                return;
            }
            return;
        }
        if (c1063d3 == null || c1063d4 == null) {
            if (f7265w) {
                Log.d(f7262v, "Second image does not contain valid size information");
                return;
            }
            return;
        }
        int m4473p = c1063d.m4473p(this.f7284h);
        int m4473p2 = c1063d2.m4473p(this.f7284h);
        int m4473p3 = c1063d3.m4473p(this.f7284h);
        int m4473p4 = c1063d4.m4473p(this.f7284h);
        if (m4473p >= m4473p3 || m4473p2 >= m4473p4) {
            return;
        }
        HashMap<String, C1063d>[] hashMapArr = this.f7282f;
        HashMap<String, C1063d> hashMap = hashMapArr[i];
        hashMapArr[i] = hashMapArr[i2];
        hashMapArr[i2] = hashMap;
    }

    /* renamed from: W */
    public final void m4429W(C1066g c1066g, int i) throws IOException {
        C1063d m4470m;
        C1063d m4470m2;
        C1063d c1063d = this.f7282f[i].get(TAG_DEFAULT_CROP_SIZE);
        C1063d c1063d2 = this.f7282f[i].get(TAG_RW2_SENSOR_TOP_BORDER);
        C1063d c1063d3 = this.f7282f[i].get(TAG_RW2_SENSOR_LEFT_BORDER);
        C1063d c1063d4 = this.f7282f[i].get(TAG_RW2_SENSOR_BOTTOM_BORDER);
        C1063d c1063d5 = this.f7282f[i].get(TAG_RW2_SENSOR_RIGHT_BORDER);
        if (c1063d == null) {
            if (c1063d2 == null || c1063d3 == null || c1063d4 == null || c1063d5 == null) {
                m4423P(c1066g, i);
                return;
            }
            int m4473p = c1063d2.m4473p(this.f7284h);
            int m4473p2 = c1063d4.m4473p(this.f7284h);
            int m4473p3 = c1063d5.m4473p(this.f7284h);
            int m4473p4 = c1063d3.m4473p(this.f7284h);
            if (m4473p2 <= m4473p || m4473p3 <= m4473p4) {
                return;
            }
            C1063d m4470m3 = C1063d.m4470m(m4473p2 - m4473p, this.f7284h);
            C1063d m4470m4 = C1063d.m4470m(m4473p3 - m4473p4, this.f7284h);
            this.f7282f[i].put(TAG_IMAGE_LENGTH, m4470m3);
            this.f7282f[i].put(TAG_IMAGE_WIDTH, m4470m4);
            return;
        }
        if (c1063d.f7310a == 5) {
            C1065f[] c1065fArr = (C1065f[]) c1063d.m4475r(this.f7284h);
            if (c1065fArr == null || c1065fArr.length != 2) {
                Log.w(f7262v, "Invalid crop size values. cropSize=" + Arrays.toString(c1065fArr));
                return;
            }
            m4470m = C1063d.m4468k(c1065fArr[0], this.f7284h);
            m4470m2 = C1063d.m4468k(c1065fArr[1], this.f7284h);
        } else {
            int[] iArr = (int[]) c1063d.m4475r(this.f7284h);
            if (iArr == null || iArr.length != 2) {
                Log.w(f7262v, "Invalid crop size values. cropSize=" + Arrays.toString(iArr));
                return;
            }
            m4470m = C1063d.m4470m(iArr[0], this.f7284h);
            m4470m2 = C1063d.m4470m(iArr[1], this.f7284h);
        }
        this.f7282f[i].put(TAG_IMAGE_WIDTH, m4470m);
        this.f7282f[i].put(TAG_IMAGE_LENGTH, m4470m2);
    }

    /* renamed from: X */
    public final void m4430X() throws IOException {
        m4428V(0, 5);
        m4428V(0, 4);
        m4428V(5, 4);
        C1063d c1063d = this.f7282f[1].get(TAG_PIXEL_X_DIMENSION);
        C1063d c1063d2 = this.f7282f[1].get(TAG_PIXEL_Y_DIMENSION);
        if (c1063d != null && c1063d2 != null) {
            this.f7282f[0].put(TAG_IMAGE_WIDTH, c1063d);
            this.f7282f[0].put(TAG_IMAGE_LENGTH, c1063d2);
        }
        if (this.f7282f[4].isEmpty() && m4413E(this.f7282f[5])) {
            HashMap<String, C1063d>[] hashMapArr = this.f7282f;
            hashMapArr[4] = hashMapArr[5];
            hashMapArr[5] = new HashMap<>();
        }
        if (!m4413E(this.f7282f[4])) {
            Log.d(f7262v, "No image meets the size requirements of a thumbnail image.");
        }
        m4422O(0, TAG_THUMBNAIL_ORIENTATION, TAG_ORIENTATION);
        m4422O(0, TAG_THUMBNAIL_IMAGE_LENGTH, TAG_IMAGE_LENGTH);
        m4422O(0, TAG_THUMBNAIL_IMAGE_WIDTH, TAG_IMAGE_WIDTH);
        m4422O(5, TAG_THUMBNAIL_ORIENTATION, TAG_ORIENTATION);
        m4422O(5, TAG_THUMBNAIL_IMAGE_LENGTH, TAG_IMAGE_LENGTH);
        m4422O(5, TAG_THUMBNAIL_IMAGE_WIDTH, TAG_IMAGE_WIDTH);
        m4422O(4, TAG_ORIENTATION, TAG_THUMBNAIL_ORIENTATION);
        m4422O(4, TAG_IMAGE_LENGTH, TAG_THUMBNAIL_IMAGE_LENGTH);
        m4422O(4, TAG_IMAGE_WIDTH, TAG_THUMBNAIL_IMAGE_WIDTH);
    }

    /* renamed from: Y */
    public final int m4431Y(C1062c c1062c) throws IOException {
        C1064e[][] c1064eArr = f7235h1;
        int[] iArr = new int[c1064eArr.length];
        int[] iArr2 = new int[c1064eArr.length];
        for (C1064e c1064e : f7237i1) {
            m4421N(c1064e.f7315b);
        }
        if (this.f7285i) {
            if (this.f7286j) {
                m4421N(TAG_STRIP_OFFSETS);
                m4421N(TAG_STRIP_BYTE_COUNTS);
            } else {
                m4421N(TAG_JPEG_INTERCHANGE_FORMAT);
                m4421N(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH);
            }
        }
        for (int i = 0; i < f7235h1.length; i++) {
            for (Object obj : this.f7282f[i].entrySet().toArray()) {
                Map.Entry entry = (Map.Entry) obj;
                if (entry.getValue() == null) {
                    this.f7282f[i].remove(entry.getKey());
                }
            }
        }
        if (!this.f7282f[1].isEmpty()) {
            this.f7282f[0].put(f7237i1[1].f7315b, C1063d.m4466i(0L, this.f7284h));
        }
        if (!this.f7282f[2].isEmpty()) {
            this.f7282f[0].put(f7237i1[2].f7315b, C1063d.m4466i(0L, this.f7284h));
        }
        if (!this.f7282f[3].isEmpty()) {
            this.f7282f[1].put(f7237i1[3].f7315b, C1063d.m4466i(0L, this.f7284h));
        }
        if (this.f7285i) {
            if (this.f7286j) {
                this.f7282f[4].put(TAG_STRIP_OFFSETS, C1063d.m4470m(0, this.f7284h));
                this.f7282f[4].put(TAG_STRIP_BYTE_COUNTS, C1063d.m4470m(this.f7289m, this.f7284h));
            } else {
                this.f7282f[4].put(TAG_JPEG_INTERCHANGE_FORMAT, C1063d.m4466i(0L, this.f7284h));
                this.f7282f[4].put(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH, C1063d.m4466i(this.f7289m, this.f7284h));
            }
        }
        for (int i2 = 0; i2 < f7235h1.length; i2++) {
            Iterator<Map.Entry<String, C1063d>> it2 = this.f7282f[i2].entrySet().iterator();
            int i3 = 0;
            while (it2.hasNext()) {
                int m4476s = it2.next().getValue().m4476s();
                if (m4476s > 4) {
                    i3 += m4476s;
                }
            }
            iArr2[i2] = iArr2[i2] + i3;
        }
        int i4 = 8;
        for (int i5 = 0; i5 < f7235h1.length; i5++) {
            if (!this.f7282f[i5].isEmpty()) {
                iArr[i5] = i4;
                i4 += (this.f7282f[i5].size() * 12) + 2 + 4 + iArr2[i5];
            }
        }
        if (this.f7285i) {
            if (this.f7286j) {
                this.f7282f[4].put(TAG_STRIP_OFFSETS, C1063d.m4470m(i4, this.f7284h));
            } else {
                this.f7282f[4].put(TAG_JPEG_INTERCHANGE_FORMAT, C1063d.m4466i(i4, this.f7284h));
            }
            this.f7288l = i4;
            i4 += this.f7289m;
        }
        if (this.f7280d == 4) {
            i4 += 8;
        }
        if (f7265w) {
            for (int i6 = 0; i6 < f7235h1.length; i6++) {
                Log.d(f7262v, String.format("index: %d, offsets: %d, tag count: %d, data sizes: %d, total size: %d", Integer.valueOf(i6), Integer.valueOf(iArr[i6]), Integer.valueOf(this.f7282f[i6].size()), Integer.valueOf(iArr2[i6]), Integer.valueOf(i4)));
            }
        }
        if (!this.f7282f[1].isEmpty()) {
            this.f7282f[0].put(f7237i1[1].f7315b, C1063d.m4466i(iArr[1], this.f7284h));
        }
        if (!this.f7282f[2].isEmpty()) {
            this.f7282f[0].put(f7237i1[2].f7315b, C1063d.m4466i(iArr[2], this.f7284h));
        }
        if (!this.f7282f[3].isEmpty()) {
            this.f7282f[1].put(f7237i1[3].f7315b, C1063d.m4466i(iArr[3], this.f7284h));
        }
        int i7 = this.f7280d;
        if (i7 == 4) {
            c1062c.m4457w(i4);
            c1062c.write(f7249o1);
        } else if (i7 == 13) {
            c1062c.writeInt(i4);
            c1062c.write(f7208X);
        } else if (i7 == 14) {
            c1062c.write(f7230f0);
            c1062c.writeInt(i4);
        }
        c1062c.m4455f(this.f7284h == ByteOrder.BIG_ENDIAN ? (short) 19789 : (short) 18761);
        c1062c.setByteOrder(this.f7284h);
        c1062c.m4457w(42);
        c1062c.m4456j(8L);
        for (int i8 = 0; i8 < f7235h1.length; i8++) {
            if (!this.f7282f[i8].isEmpty()) {
                c1062c.m4457w(this.f7282f[i8].size());
                int size = iArr[i8] + 2 + (this.f7282f[i8].size() * 12) + 4;
                for (Map.Entry<String, C1063d> entry2 : this.f7282f[i8].entrySet()) {
                    int i9 = f7241k1[i8].get(entry2.getKey()).f7314a;
                    C1063d value = entry2.getValue();
                    int m4476s2 = value.m4476s();
                    c1062c.m4457w(i9);
                    c1062c.m4457w(value.f7310a);
                    c1062c.writeInt(value.f7311b);
                    if (m4476s2 > 4) {
                        c1062c.m4456j(size);
                        size += m4476s2;
                    } else {
                        c1062c.write(value.f7313d);
                        if (m4476s2 < 4) {
                            while (m4476s2 < 4) {
                                c1062c.writeByte(0);
                                m4476s2++;
                            }
                        }
                    }
                }
                if (i8 != 0 || this.f7282f[4].isEmpty()) {
                    c1062c.m4456j(0L);
                } else {
                    c1062c.m4456j(iArr[4]);
                }
                Iterator<Map.Entry<String, C1063d>> it3 = this.f7282f[i8].entrySet().iterator();
                while (it3.hasNext()) {
                    byte[] bArr = it3.next().getValue().f7313d;
                    if (bArr.length > 4) {
                        c1062c.write(bArr, 0, bArr.length);
                    }
                }
            }
        }
        if (this.f7285i) {
            c1062c.write(getThumbnailBytes());
        }
        if (this.f7280d == 14 && i4 % 2 == 1) {
            c1062c.writeByte(0);
        }
        c1062c.setByteOrder(ByteOrder.BIG_ENDIAN);
        return i4;
    }

    /* renamed from: a */
    public final void m4432a() {
        String attribute = getAttribute(TAG_DATETIME_ORIGINAL);
        if (attribute != null && getAttribute(TAG_DATETIME) == null) {
            this.f7282f[0].put(TAG_DATETIME, C1063d.m4465h(attribute));
        }
        if (getAttribute(TAG_IMAGE_WIDTH) == null) {
            this.f7282f[0].put(TAG_IMAGE_WIDTH, C1063d.m4466i(0L, this.f7284h));
        }
        if (getAttribute(TAG_IMAGE_LENGTH) == null) {
            this.f7282f[0].put(TAG_IMAGE_LENGTH, C1063d.m4466i(0L, this.f7284h));
        }
        if (getAttribute(TAG_ORIENTATION) == null) {
            this.f7282f[0].put(TAG_ORIENTATION, C1063d.m4466i(0L, this.f7284h));
        }
        if (getAttribute(TAG_LIGHT_SOURCE) == null) {
            this.f7282f[1].put(TAG_LIGHT_SOURCE, C1063d.m4466i(0L, this.f7284h));
        }
    }

    /* renamed from: b */
    public final String m4433b(double d) {
        long j = (long) d;
        double d2 = d - j;
        long j2 = (long) (d2 * 60.0d);
        return j + "/1," + j2 + "/1," + Math.round((d2 - (j2 / 60.0d)) * 3600.0d * 1.0E7d) + "/10000000";
    }

    /* renamed from: d */
    public final void m4434d(C1061b c1061b, C1062c c1062c, byte[] bArr, byte[] bArr2) throws IOException {
        String str;
        while (true) {
            byte[] bArr3 = new byte[4];
            if (c1061b.read(bArr3) != 4) {
                StringBuilder sb = new StringBuilder();
                sb.append("Encountered invalid length while copying WebP chunks up tochunk type ");
                Charset charset = f7247n1;
                sb.append(new String(bArr, charset));
                if (bArr2 == null) {
                    str = "";
                } else {
                    str = " or " + new String(bArr2, charset);
                }
                sb.append(str);
                throw new IOException(sb.toString());
            }
            m4435e(c1061b, c1062c, bArr3);
            if (Arrays.equals(bArr3, bArr)) {
                return;
            }
            if (bArr2 != null && Arrays.equals(bArr3, bArr2)) {
                return;
            }
        }
    }

    /* renamed from: e */
    public final void m4435e(C1061b c1061b, C1062c c1062c, byte[] bArr) throws IOException {
        int readInt = c1061b.readInt();
        c1062c.write(bArr);
        c1062c.writeInt(readInt);
        if (readInt % 2 == 1) {
            readInt++;
        }
        C1067a.m4484f(c1061b, c1062c, readInt);
    }

    @Nullable
    /* renamed from: f */
    public final C1063d m4436f(@NonNull String str) {
        if (str == null) {
            throw new NullPointerException("tag shouldn't be null");
        }
        if (TAG_ISO_SPEED_RATINGS.equals(str)) {
            if (f7265w) {
                Log.d(f7262v, "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY.");
            }
            str = TAG_PHOTOGRAPHIC_SENSITIVITY;
        }
        for (int i = 0; i < f7235h1.length; i++) {
            C1063d c1063d = this.f7282f[i].get(str);
            if (c1063d != null) {
                return c1063d;
            }
        }
        return null;
    }

    public void flipHorizontally() {
        int i = 1;
        switch (getAttributeInt(TAG_ORIENTATION, 1)) {
            case 1:
                i = 2;
                break;
            case 2:
                break;
            case 3:
                i = 4;
                break;
            case 4:
                i = 3;
                break;
            case 5:
                i = 6;
                break;
            case 6:
                i = 5;
                break;
            case 7:
                i = 8;
                break;
            case 8:
                i = 7;
                break;
            default:
                i = 0;
                break;
        }
        setAttribute(TAG_ORIENTATION, Integer.toString(i));
    }

    public void flipVertically() {
        int i = 1;
        switch (getAttributeInt(TAG_ORIENTATION, 1)) {
            case 1:
                i = 4;
                break;
            case 2:
                i = 3;
                break;
            case 3:
                i = 2;
                break;
            case 4:
                break;
            case 5:
                i = 8;
                break;
            case 6:
                i = 7;
                break;
            case 7:
                i = 6;
                break;
            case 8:
                i = 5;
                break;
            default:
                i = 0;
                break;
        }
        setAttribute(TAG_ORIENTATION, Integer.toString(i));
    }

    /* renamed from: g */
    public final void m4437g(C1066g c1066g) throws IOException {
        String str;
        String str2;
        String str3;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                C1067a.b.m4490a(mediaMetadataRetriever, new C1060a(c1066g));
                String extractMetadata = mediaMetadataRetriever.extractMetadata(33);
                String extractMetadata2 = mediaMetadataRetriever.extractMetadata(34);
                String extractMetadata3 = mediaMetadataRetriever.extractMetadata(26);
                String extractMetadata4 = mediaMetadataRetriever.extractMetadata(17);
                if ("yes".equals(extractMetadata3)) {
                    str = mediaMetadataRetriever.extractMetadata(29);
                    str2 = mediaMetadataRetriever.extractMetadata(30);
                    str3 = mediaMetadataRetriever.extractMetadata(31);
                } else if ("yes".equals(extractMetadata4)) {
                    str = mediaMetadataRetriever.extractMetadata(18);
                    str2 = mediaMetadataRetriever.extractMetadata(19);
                    str3 = mediaMetadataRetriever.extractMetadata(24);
                } else {
                    str = null;
                    str2 = null;
                    str3 = null;
                }
                if (str != null) {
                    this.f7282f[0].put(TAG_IMAGE_WIDTH, C1063d.m4470m(Integer.parseInt(str), this.f7284h));
                }
                if (str2 != null) {
                    this.f7282f[0].put(TAG_IMAGE_LENGTH, C1063d.m4470m(Integer.parseInt(str2), this.f7284h));
                }
                if (str3 != null) {
                    int parseInt = Integer.parseInt(str3);
                    this.f7282f[0].put(TAG_ORIENTATION, C1063d.m4470m(parseInt != 90 ? parseInt != 180 ? parseInt != 270 ? 1 : 8 : 3 : 6, this.f7284h));
                }
                if (extractMetadata != null && extractMetadata2 != null) {
                    int parseInt2 = Integer.parseInt(extractMetadata);
                    int parseInt3 = Integer.parseInt(extractMetadata2);
                    if (parseInt3 <= 6) {
                        throw new IOException("Invalid exif length");
                    }
                    c1066g.seek(parseInt2);
                    byte[] bArr = new byte[6];
                    if (c1066g.read(bArr) != 6) {
                        throw new IOException("Can't read identifier");
                    }
                    int i = parseInt2 + 6;
                    int i2 = parseInt3 - 6;
                    if (!Arrays.equals(bArr, f7249o1)) {
                        throw new IOException("Invalid identifier");
                    }
                    byte[] bArr2 = new byte[i2];
                    if (c1066g.read(bArr2) != i2) {
                        throw new IOException("Can't read exif");
                    }
                    this.f7292p = i;
                    m4419L(bArr2, 0);
                }
                if (f7265w) {
                    Log.d(f7262v, "Heif meta: " + str + "x" + str2 + ", rotation " + str3);
                }
            } catch (RuntimeException unused) {
                throw new UnsupportedOperationException("Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported.");
            }
        } finally {
            mediaMetadataRetriever.release();
        }
    }

    public double getAltitude(double d) {
        double attributeDouble = getAttributeDouble(TAG_GPS_ALTITUDE, -1.0d);
        int attributeInt = getAttributeInt(TAG_GPS_ALTITUDE_REF, -1);
        if (attributeDouble < 0.0d || attributeInt < 0) {
            return d;
        }
        return attributeDouble * (attributeInt != 1 ? 1 : -1);
    }

    @Nullable
    public String getAttribute(@NonNull String str) {
        if (str == null) {
            throw new NullPointerException("tag shouldn't be null");
        }
        C1063d m4436f = m4436f(str);
        if (m4436f != null) {
            if (!f7243l1.contains(str)) {
                return m4436f.m4474q(this.f7284h);
            }
            if (str.equals(TAG_GPS_TIMESTAMP)) {
                int i = m4436f.f7310a;
                if (i != 5 && i != 10) {
                    Log.w(f7262v, "GPS Timestamp format is not rational. format=" + m4436f.f7310a);
                    return null;
                }
                C1065f[] c1065fArr = (C1065f[]) m4436f.m4475r(this.f7284h);
                if (c1065fArr == null || c1065fArr.length != 3) {
                    Log.w(f7262v, "Invalid GPS Timestamp array. array=" + Arrays.toString(c1065fArr));
                    return null;
                }
                C1065f c1065f = c1065fArr[0];
                Integer valueOf = Integer.valueOf((int) (((float) c1065f.f7318a) / ((float) c1065f.f7319b)));
                C1065f c1065f2 = c1065fArr[1];
                Integer valueOf2 = Integer.valueOf((int) (((float) c1065f2.f7318a) / ((float) c1065f2.f7319b)));
                C1065f c1065f3 = c1065fArr[2];
                return String.format("%02d:%02d:%02d", valueOf, valueOf2, Integer.valueOf((int) (((float) c1065f3.f7318a) / ((float) c1065f3.f7319b))));
            }
            try {
                return Double.toString(m4436f.m4472o(this.f7284h));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    @Nullable
    public byte[] getAttributeBytes(@NonNull String str) {
        if (str == null) {
            throw new NullPointerException("tag shouldn't be null");
        }
        C1063d m4436f = m4436f(str);
        if (m4436f != null) {
            return m4436f.f7313d;
        }
        return null;
    }

    public double getAttributeDouble(@NonNull String str, double d) {
        if (str == null) {
            throw new NullPointerException("tag shouldn't be null");
        }
        C1063d m4436f = m4436f(str);
        if (m4436f == null) {
            return d;
        }
        try {
            return m4436f.m4472o(this.f7284h);
        } catch (NumberFormatException unused) {
            return d;
        }
    }

    public int getAttributeInt(@NonNull String str, int i) {
        if (str == null) {
            throw new NullPointerException("tag shouldn't be null");
        }
        C1063d m4436f = m4436f(str);
        if (m4436f == null) {
            return i;
        }
        try {
            return m4436f.m4473p(this.f7284h);
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    @Nullable
    public long[] getAttributeRange(@NonNull String str) {
        if (str == null) {
            throw new NullPointerException("tag shouldn't be null");
        }
        if (this.f7296t) {
            throw new IllegalStateException("The underlying file has been modified since being parsed");
        }
        C1063d m4436f = m4436f(str);
        if (m4436f != null) {
            return new long[]{m4436f.f7312c, m4436f.f7313d.length};
        }
        return null;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Long getDateTime() {
        return m4405H(getAttribute(TAG_DATETIME), getAttribute(TAG_SUBSEC_TIME), getAttribute(TAG_OFFSET_TIME));
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Long getDateTimeDigitized() {
        return m4405H(getAttribute(TAG_DATETIME_DIGITIZED), getAttribute(TAG_SUBSEC_TIME_DIGITIZED), getAttribute(TAG_OFFSET_TIME_DIGITIZED));
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Long getDateTimeOriginal() {
        return m4405H(getAttribute(TAG_DATETIME_ORIGINAL), getAttribute(TAG_SUBSEC_TIME_ORIGINAL), getAttribute(TAG_OFFSET_TIME_ORIGINAL));
    }

    @Nullable
    @SuppressLint({"AutoBoxing"})
    public Long getGpsDateTime() {
        String attribute = getAttribute(TAG_GPS_DATESTAMP);
        String attribute2 = getAttribute(TAG_GPS_TIMESTAMP);
        if (attribute != null && attribute2 != null) {
            Pattern pattern = f7213Y1;
            if (pattern.matcher(attribute).matches() || pattern.matcher(attribute2).matches()) {
                String str = attribute + ' ' + attribute2;
                ParsePosition parsePosition = new ParsePosition(0);
                try {
                    Date parse = f7252q0.parse(str, parsePosition);
                    if (parse == null && (parse = f7254r0.parse(str, parsePosition)) == null) {
                        return null;
                    }
                    return Long.valueOf(parse.getTime());
                } catch (IllegalArgumentException unused) {
                }
            }
        }
        return null;
    }

    @Deprecated
    public boolean getLatLong(float[] fArr) {
        double[] latLong = getLatLong();
        if (latLong == null) {
            return false;
        }
        fArr[0] = (float) latLong[0];
        fArr[1] = (float) latLong[1];
        return true;
    }

    public int getRotationDegrees() {
        switch (getAttributeInt(TAG_ORIENTATION, 1)) {
            case 3:
            case 4:
                return 180;
            case 5:
            case 8:
                return 270;
            case 6:
            case 7:
                return 90;
            default:
                return 0;
        }
    }

    @Nullable
    public byte[] getThumbnail() {
        int i = this.f7291o;
        if (i == 6 || i == 7) {
            return getThumbnailBytes();
        }
        return null;
    }

    @Nullable
    public Bitmap getThumbnailBitmap() {
        if (!this.f7285i) {
            return null;
        }
        if (this.f7290n == null) {
            this.f7290n = getThumbnailBytes();
        }
        int i = this.f7291o;
        if (i == 6 || i == 7) {
            return BitmapFactory.decodeByteArray(this.f7290n, 0, this.f7289m);
        }
        if (i == 1) {
            int length = this.f7290n.length / 3;
            int[] iArr = new int[length];
            for (int i2 = 0; i2 < length; i2++) {
                byte[] bArr = this.f7290n;
                int i3 = i2 * 3;
                iArr[i2] = (bArr[i3] << 16) + 0 + (bArr[i3 + 1] << 8) + bArr[i3 + 2];
            }
            C1063d c1063d = this.f7282f[4].get(TAG_THUMBNAIL_IMAGE_LENGTH);
            C1063d c1063d2 = this.f7282f[4].get(TAG_THUMBNAIL_IMAGE_WIDTH);
            if (c1063d != null && c1063d2 != null) {
                return Bitmap.createBitmap(iArr, c1063d2.m4473p(this.f7284h), c1063d.m4473p(this.f7284h), Bitmap.Config.ARGB_8888);
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0064 A[Catch: Exception -> 0x0087, all -> 0x00a4, TRY_ENTER, TryCatch #2 {all -> 0x00a4, blocks: (B:17:0x004e, B:20:0x0064, B:22:0x0070, B:27:0x007b, B:28:0x0080, B:29:0x0081, B:30:0x0086, B:32:0x0096), top: B:6:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0081 A[Catch: Exception -> 0x0087, all -> 0x00a4, TryCatch #2 {all -> 0x00a4, blocks: (B:17:0x004e, B:20:0x0064, B:22:0x0070, B:27:0x007b, B:28:0x0080, B:29:0x0081, B:30:0x0086, B:32:0x0096), top: B:6:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ab  */
    /* JADX WARN: Type inference failed for: r1v1, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v5, types: [android.content.res.AssetManager$AssetInputStream, java.io.Closeable, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.io.Closeable, java.io.InputStream] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] getThumbnailBytes() {
        /*
            r9 = this;
            java.lang.String r0 = "ExifInterface"
            boolean r1 = r9.f7285i
            r2 = 0
            if (r1 != 0) goto L8
            return r2
        L8:
            byte[] r1 = r9.f7290n
            if (r1 == 0) goto Ld
            return r1
        Ld:
            android.content.res.AssetManager$AssetInputStream r1 = r9.f7279c     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            if (r1 == 0) goto L2d
            boolean r3 = r1.markSupported()     // Catch: java.lang.Throwable -> L25 java.lang.Exception -> L29
            if (r3 == 0) goto L1c
            r1.reset()     // Catch: java.lang.Throwable -> L25 java.lang.Exception -> L29
        L1a:
            r3 = r2
            goto L4e
        L1c:
            java.lang.String r9 = "Cannot read thumbnail from inputstream without mark/reset support"
            android.util.Log.d(r0, r9)     // Catch: java.lang.Throwable -> L25 java.lang.Exception -> L29
            androidx.exifinterface.media.C1067a.m4481c(r1)
            return r2
        L25:
            r9 = move-exception
            r3 = r2
            goto La5
        L29:
            r9 = move-exception
            r3 = r2
            goto L96
        L2d:
            java.lang.String r1 = r9.f7277a     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            if (r1 == 0) goto L39
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            java.lang.String r3 = r9.f7277a     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            goto L1a
        L39:
            java.io.FileDescriptor r1 = r9.f7278b     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            java.io.FileDescriptor r1 = androidx.exifinterface.media.C1067a.a.m4488b(r1)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            int r3 = android.system.OsConstants.SEEK_SET     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8c
            r4 = 0
            androidx.exifinterface.media.C1067a.a.m4489c(r1, r4, r3)     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8c
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8c
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8c
            r8 = r3
            r3 = r1
            r1 = r8
        L4e:
            int r4 = r9.f7288l     // Catch: java.lang.Exception -> L87 java.lang.Throwable -> La4
            int r5 = r9.f7292p     // Catch: java.lang.Exception -> L87 java.lang.Throwable -> La4
            int r4 = r4 + r5
            long r4 = (long) r4     // Catch: java.lang.Exception -> L87 java.lang.Throwable -> La4
            long r4 = r1.skip(r4)     // Catch: java.lang.Exception -> L87 java.lang.Throwable -> La4
            int r6 = r9.f7288l     // Catch: java.lang.Exception -> L87 java.lang.Throwable -> La4
            int r7 = r9.f7292p     // Catch: java.lang.Exception -> L87 java.lang.Throwable -> La4
            int r6 = r6 + r7
            long r6 = (long) r6
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            java.lang.String r5 = "Corrupted image"
            if (r4 != 0) goto L81
            int r4 = r9.f7289m     // Catch: java.lang.Exception -> L87 java.lang.Throwable -> La4
            byte[] r4 = new byte[r4]     // Catch: java.lang.Exception -> L87 java.lang.Throwable -> La4
            int r6 = r1.read(r4)     // Catch: java.lang.Exception -> L87 java.lang.Throwable -> La4
            int r7 = r9.f7289m     // Catch: java.lang.Exception -> L87 java.lang.Throwable -> La4
            if (r6 != r7) goto L7b
            r9.f7290n = r4     // Catch: java.lang.Exception -> L87 java.lang.Throwable -> La4
            androidx.exifinterface.media.C1067a.m4481c(r1)
            if (r3 == 0) goto L7a
            androidx.exifinterface.media.C1067a.m4480b(r3)
        L7a:
            return r4
        L7b:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Exception -> L87 java.lang.Throwable -> La4
            r9.<init>(r5)     // Catch: java.lang.Exception -> L87 java.lang.Throwable -> La4
            throw r9     // Catch: java.lang.Exception -> L87 java.lang.Throwable -> La4
        L81:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Exception -> L87 java.lang.Throwable -> La4
            r9.<init>(r5)     // Catch: java.lang.Exception -> L87 java.lang.Throwable -> La4
            throw r9     // Catch: java.lang.Exception -> L87 java.lang.Throwable -> La4
        L87:
            r9 = move-exception
            goto L96
        L89:
            r9 = move-exception
            r3 = r1
            goto La6
        L8c:
            r9 = move-exception
            r3 = r1
            r1 = r2
            goto L96
        L90:
            r9 = move-exception
            r3 = r2
            goto La6
        L93:
            r9 = move-exception
            r1 = r2
            r3 = r1
        L96:
            java.lang.String r4 = "Encountered exception while getting thumbnail"
            android.util.Log.d(r0, r4, r9)     // Catch: java.lang.Throwable -> La4
            androidx.exifinterface.media.C1067a.m4481c(r1)
            if (r3 == 0) goto La3
            androidx.exifinterface.media.C1067a.m4480b(r3)
        La3:
            return r2
        La4:
            r9 = move-exception
        La5:
            r2 = r1
        La6:
            androidx.exifinterface.media.C1067a.m4481c(r2)
            if (r3 == 0) goto Lae
            androidx.exifinterface.media.C1067a.m4480b(r3)
        Lae:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.getThumbnailBytes():byte[]");
    }

    @Nullable
    public long[] getThumbnailRange() {
        if (this.f7296t) {
            throw new IllegalStateException("The underlying file has been modified since being parsed");
        }
        if (!this.f7285i) {
            return null;
        }
        if (!this.f7286j || this.f7287k) {
            return new long[]{this.f7288l + this.f7292p, this.f7289m};
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x019a, code lost:
    
        r22.setByteOrder(r21.f7284h);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x019f, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0184 A[LOOP:0: B:9:0x0038->B:33:0x0184, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x018e A[SYNTHETIC] */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4438h(androidx.exifinterface.media.ExifInterface.C1061b r22, int r23, int r24) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.m4438h(androidx.exifinterface.media.ExifInterface$b, int, int):void");
    }

    public boolean hasAttribute(@NonNull String str) {
        return m4436f(str) != null;
    }

    public boolean hasThumbnail() {
        return this.f7285i;
    }

    /* renamed from: i */
    public final int m4439i(BufferedInputStream bufferedInputStream) throws IOException {
        bufferedInputStream.mark(5000);
        byte[] bArr = new byte[5000];
        bufferedInputStream.read(bArr);
        bufferedInputStream.reset();
        if (m4410w(bArr)) {
            return 4;
        }
        if (m4453z(bArr)) {
            return 9;
        }
        if (m4450v(bArr)) {
            return 12;
        }
        if (m4451x(bArr)) {
            return 7;
        }
        if (m4411A(bArr)) {
            return 10;
        }
        if (m4452y(bArr)) {
            return 13;
        }
        return m4414F(bArr) ? 14 : 0;
    }

    public boolean isFlipped() {
        int attributeInt = getAttributeInt(TAG_ORIENTATION, 1);
        return attributeInt == 2 || attributeInt == 7 || attributeInt == 4 || attributeInt == 5;
    }

    public boolean isThumbnailCompressed() {
        if (!this.f7285i) {
            return false;
        }
        int i = this.f7291o;
        return i == 6 || i == 7;
    }

    /* renamed from: j */
    public final void m4440j(C1066g c1066g) throws IOException {
        int i;
        int i2;
        m4443m(c1066g);
        C1063d c1063d = this.f7282f[1].get(TAG_MAKER_NOTE);
        if (c1063d != null) {
            C1066g c1066g2 = new C1066g(c1063d.f7313d);
            c1066g2.setByteOrder(this.f7284h);
            byte[] bArr = f7184P;
            byte[] bArr2 = new byte[bArr.length];
            c1066g2.readFully(bArr2);
            c1066g2.seek(0L);
            byte[] bArr3 = f7187Q;
            byte[] bArr4 = new byte[bArr3.length];
            c1066g2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                c1066g2.seek(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                c1066g2.seek(12L);
            }
            m4420M(c1066g2, 6);
            C1063d c1063d2 = this.f7282f[7].get(TAG_ORF_PREVIEW_IMAGE_START);
            C1063d c1063d3 = this.f7282f[7].get(TAG_ORF_PREVIEW_IMAGE_LENGTH);
            if (c1063d2 != null && c1063d3 != null) {
                this.f7282f[5].put(TAG_JPEG_INTERCHANGE_FORMAT, c1063d2);
                this.f7282f[5].put(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH, c1063d3);
            }
            C1063d c1063d4 = this.f7282f[8].get(TAG_ORF_ASPECT_FRAME);
            if (c1063d4 != null) {
                int[] iArr = (int[]) c1063d4.m4475r(this.f7284h);
                if (iArr == null || iArr.length != 4) {
                    Log.w(f7262v, "Invalid aspect frame values. frame=" + Arrays.toString(iArr));
                    return;
                }
                int i3 = iArr[2];
                int i4 = iArr[0];
                if (i3 <= i4 || (i = iArr[3]) <= (i2 = iArr[1])) {
                    return;
                }
                int i5 = (i3 - i4) + 1;
                int i6 = (i - i2) + 1;
                if (i5 < i6) {
                    int i7 = i5 + i6;
                    i6 = i7 - i6;
                    i5 = i7 - i6;
                }
                C1063d m4470m = C1063d.m4470m(i5, this.f7284h);
                C1063d m4470m2 = C1063d.m4470m(i6, this.f7284h);
                this.f7282f[0].put(TAG_IMAGE_WIDTH, m4470m);
                this.f7282f[0].put(TAG_IMAGE_LENGTH, m4470m2);
            }
        }
    }

    /* renamed from: k */
    public final void m4441k(C1061b c1061b) throws IOException {
        if (f7265w) {
            Log.d(f7262v, "getPngAttributes starting with: " + c1061b);
        }
        c1061b.setByteOrder(ByteOrder.BIG_ENDIAN);
        byte[] bArr = f7205W;
        c1061b.m4454f(bArr.length);
        int length = bArr.length + 0;
        while (true) {
            try {
                int readInt = c1061b.readInt();
                int i = length + 4;
                byte[] bArr2 = new byte[4];
                if (c1061b.read(bArr2) != 4) {
                    throw new IOException("Encountered invalid length while parsing PNG chunktype");
                }
                int i2 = i + 4;
                if (i2 == 16 && !Arrays.equals(bArr2, f7211Y)) {
                    throw new IOException("Encountered invalid PNG file--IHDR chunk should appearas the first chunk");
                }
                if (Arrays.equals(bArr2, f7214Z)) {
                    return;
                }
                if (Arrays.equals(bArr2, f7208X)) {
                    byte[] bArr3 = new byte[readInt];
                    if (c1061b.read(bArr3) != readInt) {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + C1067a.m4479a(bArr2));
                    }
                    int readInt2 = c1061b.readInt();
                    CRC32 crc32 = new CRC32();
                    crc32.update(bArr2);
                    crc32.update(bArr3);
                    if (((int) crc32.getValue()) == readInt2) {
                        this.f7292p = i2;
                        m4419L(bArr3, 0);
                        m4430X();
                        m4427T(new C1061b(bArr3));
                        return;
                    }
                    throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + readInt2 + ", calculated CRC value: " + crc32.getValue());
                }
                int i3 = readInt + 4;
                c1061b.m4454f(i3);
                length = i2 + i3;
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt PNG file.");
            }
        }
    }

    /* renamed from: l */
    public final void m4442l(C1061b c1061b) throws IOException {
        boolean z = f7265w;
        if (z) {
            Log.d(f7262v, "getRafAttributes starting with: " + c1061b);
        }
        c1061b.m4454f(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        byte[] bArr3 = new byte[4];
        c1061b.read(bArr);
        c1061b.read(bArr2);
        c1061b.read(bArr3);
        int i = ByteBuffer.wrap(bArr).getInt();
        int i2 = ByteBuffer.wrap(bArr2).getInt();
        int i3 = ByteBuffer.wrap(bArr3).getInt();
        byte[] bArr4 = new byte[i2];
        c1061b.m4454f(i - c1061b.position());
        c1061b.read(bArr4);
        m4438h(new C1061b(bArr4), i, 5);
        c1061b.m4454f(i3 - c1061b.position());
        c1061b.setByteOrder(ByteOrder.BIG_ENDIAN);
        int readInt = c1061b.readInt();
        if (z) {
            Log.d(f7262v, "numberOfDirectoryEntry: " + readInt);
        }
        for (int i4 = 0; i4 < readInt; i4++) {
            int readUnsignedShort = c1061b.readUnsignedShort();
            int readUnsignedShort2 = c1061b.readUnsignedShort();
            if (readUnsignedShort == f7194S0.f7314a) {
                short readShort = c1061b.readShort();
                short readShort2 = c1061b.readShort();
                C1063d m4470m = C1063d.m4470m(readShort, this.f7284h);
                C1063d m4470m2 = C1063d.m4470m(readShort2, this.f7284h);
                this.f7282f[0].put(TAG_IMAGE_LENGTH, m4470m);
                this.f7282f[0].put(TAG_IMAGE_WIDTH, m4470m2);
                if (f7265w) {
                    Log.d(f7262v, "Updated to length: " + ((int) readShort) + ", width: " + ((int) readShort2));
                    return;
                }
                return;
            }
            c1061b.m4454f(readUnsignedShort2);
        }
    }

    /* renamed from: m */
    public final void m4443m(C1066g c1066g) throws IOException {
        C1063d c1063d;
        m4416I(c1066g);
        m4420M(c1066g, 0);
        m4429W(c1066g, 0);
        m4429W(c1066g, 5);
        m4429W(c1066g, 4);
        m4430X();
        if (this.f7280d != 8 || (c1063d = this.f7282f[1].get(TAG_MAKER_NOTE)) == null) {
            return;
        }
        C1066g c1066g2 = new C1066g(c1063d.f7313d);
        c1066g2.setByteOrder(this.f7284h);
        c1066g2.m4454f(6);
        m4420M(c1066g2, 9);
        C1063d c1063d2 = this.f7282f[9].get(TAG_COLOR_SPACE);
        if (c1063d2 != null) {
            this.f7282f[1].put(TAG_COLOR_SPACE, c1063d2);
        }
    }

    /* renamed from: n */
    public final void m4444n(C1066g c1066g) throws IOException {
        if (f7265w) {
            Log.d(f7262v, "getRw2Attributes starting with: " + c1066g);
        }
        m4443m(c1066g);
        C1063d c1063d = this.f7282f[0].get(TAG_RW2_JPG_FROM_RAW);
        if (c1063d != null) {
            m4438h(new C1061b(c1063d.f7313d), (int) c1063d.f7312c, 5);
        }
        C1063d c1063d2 = this.f7282f[0].get(TAG_RW2_ISO);
        C1063d c1063d3 = this.f7282f[1].get(TAG_PHOTOGRAPHIC_SENSITIVITY);
        if (c1063d2 == null || c1063d3 != null) {
            return;
        }
        this.f7282f[1].put(TAG_PHOTOGRAPHIC_SENSITIVITY, c1063d2);
    }

    /* renamed from: o */
    public final void m4445o(C1066g c1066g) throws IOException {
        byte[] bArr = f7249o1;
        c1066g.m4454f(bArr.length);
        byte[] bArr2 = new byte[c1066g.available()];
        c1066g.readFully(bArr2);
        this.f7292p = bArr.length;
        m4419L(bArr2, 0);
    }

    /* renamed from: p */
    public final void m4446p(C1061b c1061b) throws IOException {
        if (f7265w) {
            Log.d(f7262v, "getWebpAttributes starting with: " + c1061b);
        }
        c1061b.setByteOrder(ByteOrder.LITTLE_ENDIAN);
        c1061b.m4454f(f7223c0.length);
        int readInt = c1061b.readInt() + 8;
        byte[] bArr = f7226d0;
        c1061b.m4454f(bArr.length);
        int length = bArr.length + 8;
        while (true) {
            try {
                byte[] bArr2 = new byte[4];
                if (c1061b.read(bArr2) != 4) {
                    throw new IOException("Encountered invalid length while parsing WebP chunktype");
                }
                int readInt2 = c1061b.readInt();
                int i = length + 4 + 4;
                if (Arrays.equals(f7230f0, bArr2)) {
                    byte[] bArr3 = new byte[readInt2];
                    if (c1061b.read(bArr3) == readInt2) {
                        this.f7292p = i;
                        m4419L(bArr3, 0);
                        m4427T(new C1061b(bArr3));
                        return;
                    } else {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + C1067a.m4479a(bArr2));
                    }
                }
                if (readInt2 % 2 == 1) {
                    readInt2++;
                }
                length = i + readInt2;
                if (length == readInt) {
                    return;
                }
                if (length > readInt) {
                    throw new IOException("Encountered WebP file with invalid chunk size");
                }
                c1061b.m4454f(readInt2);
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt WebP file.");
            }
        }
    }

    /* renamed from: r */
    public final void m4447r(C1061b c1061b, HashMap hashMap) throws IOException {
        C1063d c1063d = (C1063d) hashMap.get(TAG_JPEG_INTERCHANGE_FORMAT);
        C1063d c1063d2 = (C1063d) hashMap.get(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH);
        if (c1063d == null || c1063d2 == null) {
            return;
        }
        int m4473p = c1063d.m4473p(this.f7284h);
        int m4473p2 = c1063d2.m4473p(this.f7284h);
        if (this.f7280d == 7) {
            m4473p += this.f7293q;
        }
        if (m4473p > 0 && m4473p2 > 0) {
            this.f7285i = true;
            if (this.f7277a == null && this.f7279c == null && this.f7278b == null) {
                byte[] bArr = new byte[m4473p2];
                c1061b.skip(m4473p);
                c1061b.read(bArr);
                this.f7290n = bArr;
            }
            this.f7288l = m4473p;
            this.f7289m = m4473p2;
        }
        if (f7265w) {
            Log.d(f7262v, "Setting thumbnail attributes with offset: " + m4473p + ", length: " + m4473p2);
        }
    }

    public void resetOrientation() {
        setAttribute(TAG_ORIENTATION, Integer.toString(1));
    }

    public void rotate(int i) {
        if (i % 90 != 0) {
            throw new IllegalArgumentException("degree should be a multiple of 90");
        }
        int attributeInt = getAttributeInt(TAG_ORIENTATION, 1);
        List<Integer> list = f7151E;
        if (list.contains(Integer.valueOf(attributeInt))) {
            int indexOf = (list.indexOf(Integer.valueOf(attributeInt)) + (i / 90)) % 4;
            r4 = list.get(indexOf + (indexOf < 0 ? 4 : 0)).intValue();
        } else {
            List<Integer> list2 = f7154F;
            if (list2.contains(Integer.valueOf(attributeInt))) {
                int indexOf2 = (list2.indexOf(Integer.valueOf(attributeInt)) + (i / 90)) % 4;
                r4 = list2.get(indexOf2 + (indexOf2 < 0 ? 4 : 0)).intValue();
            }
        }
        setAttribute(TAG_ORIENTATION, Integer.toString(r4));
    }

    /* renamed from: s */
    public final void m4448s(C1061b c1061b, HashMap hashMap) throws IOException {
        C1063d c1063d = (C1063d) hashMap.get(TAG_STRIP_OFFSETS);
        C1063d c1063d2 = (C1063d) hashMap.get(TAG_STRIP_BYTE_COUNTS);
        if (c1063d == null || c1063d2 == null) {
            return;
        }
        long[] m4482d = C1067a.m4482d(c1063d.m4475r(this.f7284h));
        long[] m4482d2 = C1067a.m4482d(c1063d2.m4475r(this.f7284h));
        if (m4482d == null || m4482d.length == 0) {
            Log.w(f7262v, "stripOffsets should not be null or have zero length.");
            return;
        }
        if (m4482d2 == null || m4482d2.length == 0) {
            Log.w(f7262v, "stripByteCounts should not be null or have zero length.");
            return;
        }
        if (m4482d.length != m4482d2.length) {
            Log.w(f7262v, "stripOffsets and stripByteCounts should have same length.");
            return;
        }
        long j = 0;
        for (long j2 : m4482d2) {
            j += j2;
        }
        int i = (int) j;
        byte[] bArr = new byte[i];
        this.f7287k = true;
        this.f7286j = true;
        this.f7285i = true;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < m4482d.length; i4++) {
            int i5 = (int) m4482d[i4];
            int i6 = (int) m4482d2[i4];
            if (i4 < m4482d.length - 1 && i5 + i6 != m4482d[i4 + 1]) {
                this.f7287k = false;
            }
            int i7 = i5 - i2;
            if (i7 < 0) {
                Log.d(f7262v, "Invalid strip offset value");
                return;
            }
            long j3 = i7;
            if (c1061b.skip(j3) != j3) {
                Log.d(f7262v, "Failed to skip " + i7 + " bytes.");
                return;
            }
            int i8 = i2 + i7;
            byte[] bArr2 = new byte[i6];
            if (c1061b.read(bArr2) != i6) {
                Log.d(f7262v, "Failed to read " + i6 + " bytes.");
                return;
            }
            i2 = i8 + i6;
            System.arraycopy(bArr2, 0, bArr, i3, i6);
            i3 += i6;
        }
        this.f7290n = bArr;
        if (this.f7287k) {
            this.f7288l = (int) m4482d[0];
            this.f7289m = i;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x00e7 A[Catch: all -> 0x010f, Exception -> 0x0113, TryCatch #18 {Exception -> 0x0113, all -> 0x010f, blocks: (B:57:0x00e3, B:59:0x00e7, B:60:0x00fd, B:64:0x00f6), top: B:56:0x00e3 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00f6 A[Catch: all -> 0x010f, Exception -> 0x0113, TryCatch #18 {Exception -> 0x0113, all -> 0x010f, blocks: (B:57:0x00e3, B:59:0x00e7, B:60:0x00fd, B:64:0x00f6), top: B:56:0x00e3 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0148  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void saveAttributes() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.saveAttributes():void");
    }

    public void setAltitude(double d) {
        String str = d >= 0.0d ? "0" : "1";
        setAttribute(TAG_GPS_ALTITUDE, new C1065f(Math.abs(d)).toString());
        setAttribute(TAG_GPS_ALTITUDE_REF, str);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:58:0x0216. Please report as an issue. */
    public void setAttribute(@NonNull String str, @Nullable String str2) {
        C1064e c1064e;
        int i;
        int i2;
        String str3 = str;
        String str4 = str2;
        if (str3 == null) {
            throw new NullPointerException("tag shouldn't be null");
        }
        if ((TAG_DATETIME.equals(str3) || TAG_DATETIME_ORIGINAL.equals(str3) || TAG_DATETIME_DIGITIZED.equals(str3)) && str4 != null) {
            boolean find = f7219a2.matcher(str4).find();
            boolean find2 = f7222b2.matcher(str4).find();
            if (str2.length() != 19 || (!find && !find2)) {
                Log.w(f7262v, "Invalid value for " + str3 + " : " + str4);
                return;
            }
            if (find2) {
                str4 = str4.replaceAll("-", ":");
            }
        }
        if (TAG_ISO_SPEED_RATINGS.equals(str3)) {
            if (f7265w) {
                Log.d(f7262v, "setAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY.");
            }
            str3 = TAG_PHOTOGRAPHIC_SENSITIVITY;
        }
        int i3 = 2;
        int i4 = 1;
        if (str4 != null && f7243l1.contains(str3)) {
            if (str3.equals(TAG_GPS_TIMESTAMP)) {
                Matcher matcher = f7216Z1.matcher(str4);
                if (!matcher.find()) {
                    Log.w(f7262v, "Invalid value for " + str3 + " : " + str4);
                    return;
                }
                str4 = Integer.parseInt(matcher.group(1)) + "/1," + Integer.parseInt(matcher.group(2)) + "/1," + Integer.parseInt(matcher.group(3)) + "/1";
            } else {
                try {
                    str4 = new C1065f(Double.parseDouble(str4)).toString();
                } catch (NumberFormatException unused) {
                    Log.w(f7262v, "Invalid value for " + str3 + " : " + str4);
                    return;
                }
            }
        }
        int i5 = 0;
        int i6 = 0;
        while (i6 < f7235h1.length) {
            if ((i6 != 4 || this.f7285i) && (c1064e = f7241k1[i6].get(str3)) != null) {
                if (str4 == null) {
                    this.f7282f[i6].remove(str3);
                } else {
                    Pair<Integer, Integer> m4408q = m4408q(str4);
                    int i7 = -1;
                    if (c1064e.f7316c == ((Integer) m4408q.first).intValue() || c1064e.f7316c == ((Integer) m4408q.second).intValue()) {
                        i = c1064e.f7316c;
                    } else {
                        int i8 = c1064e.f7317d;
                        if (i8 == -1 || !(i8 == ((Integer) m4408q.first).intValue() || c1064e.f7317d == ((Integer) m4408q.second).intValue())) {
                            int i9 = c1064e.f7316c;
                            if (i9 == i4 || i9 == 7 || i9 == i3) {
                                i = i9;
                            } else if (f7265w) {
                                StringBuilder sb = new StringBuilder();
                                sb.append("Given tag (");
                                sb.append(str3);
                                sb.append(") value didn't match with one of expected formats: ");
                                String[] strArr = f7170K0;
                                sb.append(strArr[c1064e.f7316c]);
                                sb.append(c1064e.f7317d == -1 ? "" : ", " + strArr[c1064e.f7317d]);
                                sb.append(" (guess: ");
                                sb.append(strArr[((Integer) m4408q.first).intValue()]);
                                sb.append(((Integer) m4408q.second).intValue() != -1 ? ", " + strArr[((Integer) m4408q.second).intValue()] : "");
                                sb.append(MotionUtils.f31762d);
                                Log.d(f7262v, sb.toString());
                            }
                        } else {
                            i = c1064e.f7317d;
                        }
                    }
                    switch (i) {
                        case 1:
                            i2 = i4;
                            this.f7282f[i6].put(str3, C1063d.m4458a(str4));
                            break;
                        case 2:
                        case 7:
                            i2 = i4;
                            this.f7282f[i6].put(str3, C1063d.m4465h(str4));
                            break;
                        case 3:
                            i2 = i4;
                            String[] split = str4.split(",", -1);
                            int[] iArr = new int[split.length];
                            for (int i10 = 0; i10 < split.length; i10++) {
                                iArr[i10] = Integer.parseInt(split[i10]);
                            }
                            this.f7282f[i6].put(str3, C1063d.m4471n(iArr, this.f7284h));
                            break;
                        case 4:
                            i2 = i4;
                            String[] split2 = str4.split(",", -1);
                            long[] jArr = new long[split2.length];
                            for (int i11 = 0; i11 < split2.length; i11++) {
                                jArr[i11] = Long.parseLong(split2[i11]);
                            }
                            this.f7282f[i6].put(str3, C1063d.m4467j(jArr, this.f7284h));
                            break;
                        case 5:
                            String[] split3 = str4.split(",", -1);
                            C1065f[] c1065fArr = new C1065f[split3.length];
                            int i12 = 0;
                            while (i12 < split3.length) {
                                String[] split4 = split3[i12].split("/", i7);
                                c1065fArr[i12] = new C1065f((long) Double.parseDouble(split4[0]), (long) Double.parseDouble(split4[1]));
                                i12++;
                                i7 = -1;
                            }
                            i2 = 1;
                            this.f7282f[i6].put(str3, C1063d.m4469l(c1065fArr, this.f7284h));
                            break;
                        case 6:
                        case 8:
                        case 11:
                        default:
                            i2 = i4;
                            if (f7265w) {
                                Log.d(f7262v, "Data format isn't one of expected formats: " + i);
                                break;
                            } else {
                                break;
                            }
                        case 9:
                            String[] split5 = str4.split(",", -1);
                            int[] iArr2 = new int[split5.length];
                            for (int i13 = 0; i13 < split5.length; i13++) {
                                iArr2[i13] = Integer.parseInt(split5[i13]);
                            }
                            this.f7282f[i6].put(str3, C1063d.m4462e(iArr2, this.f7284h));
                            i2 = 1;
                            break;
                        case 10:
                            String[] split6 = str4.split(",", -1);
                            C1065f[] c1065fArr2 = new C1065f[split6.length];
                            int i14 = i5;
                            while (i14 < split6.length) {
                                String[] split7 = split6[i14].split("/", -1);
                                c1065fArr2[i14] = new C1065f((long) Double.parseDouble(split7[i5]), (long) Double.parseDouble(split7[i4]));
                                i14++;
                                split6 = split6;
                                i5 = 0;
                                i4 = 1;
                            }
                            this.f7282f[i6].put(str3, C1063d.m4464g(c1065fArr2, this.f7284h));
                            i2 = 1;
                            break;
                        case 12:
                            String[] split8 = str4.split(",", -1);
                            double[] dArr = new double[split8.length];
                            for (int i15 = i5; i15 < split8.length; i15++) {
                                dArr[i15] = Double.parseDouble(split8[i15]);
                            }
                            this.f7282f[i6].put(str3, C1063d.m4460c(dArr, this.f7284h));
                            break;
                    }
                    i6++;
                    i4 = i2;
                    i3 = 2;
                    i5 = 0;
                }
            }
            i2 = i4;
            i6++;
            i4 = i2;
            i3 = 2;
            i5 = 0;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void setDateTime(@NonNull Long l) {
        if (l == null) {
            throw new NullPointerException("Timestamp should not be null.");
        }
        if (l.longValue() < 0) {
            throw new IllegalArgumentException("Timestamp should a positive value.");
        }
        String l2 = Long.toString(l.longValue() % 1000);
        for (int length = l2.length(); length < 3; length++) {
            l2 = "0" + l2;
        }
        setAttribute(TAG_DATETIME, f7252q0.format(new Date(l.longValue())));
        setAttribute(TAG_SUBSEC_TIME, l2);
    }

    public void setGpsInfo(Location location) {
        if (location == null) {
            return;
        }
        setAttribute(TAG_GPS_PROCESSING_METHOD, location.getProvider());
        setLatLong(location.getLatitude(), location.getLongitude());
        setAltitude(location.getAltitude());
        setAttribute(TAG_GPS_SPEED_REF, "K");
        setAttribute(TAG_GPS_SPEED, new C1065f((location.getSpeed() * ((float) TimeUnit.HOURS.toSeconds(1L))) / 1000.0f).toString());
        String[] split = f7252q0.format(new Date(location.getTime())).split("\\s+", -1);
        setAttribute(TAG_GPS_DATESTAMP, split[0]);
        setAttribute(TAG_GPS_TIMESTAMP, split[1]);
    }

    public void setLatLong(double d, double d2) {
        if (d < -90.0d || d > 90.0d || Double.isNaN(d)) {
            throw new IllegalArgumentException("Latitude value " + d + " is not valid.");
        }
        if (d2 < -180.0d || d2 > 180.0d || Double.isNaN(d2)) {
            throw new IllegalArgumentException("Longitude value " + d2 + " is not valid.");
        }
        setAttribute(TAG_GPS_LATITUDE_REF, d >= 0.0d ? "N" : "S");
        setAttribute(TAG_GPS_LATITUDE, m4433b(Math.abs(d)));
        setAttribute(TAG_GPS_LONGITUDE_REF, d2 >= 0.0d ? "E" : "W");
        setAttribute(TAG_GPS_LONGITUDE, m4433b(Math.abs(d2)));
    }

    /* renamed from: t */
    public final void m4449t(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("filename cannot be null");
        }
        FileInputStream fileInputStream = null;
        this.f7279c = null;
        this.f7277a = str;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(str);
            try {
                if (m4403B(fileInputStream2.getFD())) {
                    this.f7278b = fileInputStream2.getFD();
                } else {
                    this.f7278b = null;
                }
                m4415G(fileInputStream2);
                C1067a.m4481c(fileInputStream2);
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                C1067a.m4481c(fileInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: v */
    public final boolean m4450v(byte[] bArr) throws IOException {
        C1061b c1061b;
        long readInt;
        byte[] bArr2;
        long j;
        C1061b c1061b2 = null;
        try {
            try {
                c1061b = new C1061b(bArr);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            readInt = c1061b.readInt();
            bArr2 = new byte[4];
            c1061b.read(bArr2);
        } catch (Exception e2) {
            e = e2;
            c1061b2 = c1061b;
            if (f7265w) {
                Log.d(f7262v, "Exception parsing HEIF file type box.", e);
            }
            if (c1061b2 != null) {
                c1061b2.close();
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            c1061b2 = c1061b;
            if (c1061b2 != null) {
                c1061b2.close();
            }
            throw th;
        }
        if (!Arrays.equals(bArr2, f7169K)) {
            c1061b.close();
            return false;
        }
        if (readInt == 1) {
            readInt = c1061b.readLong();
            j = 16;
            if (readInt < 16) {
                c1061b.close();
                return false;
            }
        } else {
            j = 8;
        }
        if (readInt > bArr.length) {
            readInt = bArr.length;
        }
        long j2 = readInt - j;
        if (j2 < 8) {
            c1061b.close();
            return false;
        }
        byte[] bArr3 = new byte[4];
        boolean z = false;
        boolean z2 = false;
        for (long j3 = 0; j3 < j2 / 4; j3++) {
            if (c1061b.read(bArr3) != 4) {
                c1061b.close();
                return false;
            }
            if (j3 != 1) {
                if (Arrays.equals(bArr3, f7172L)) {
                    z = true;
                } else if (Arrays.equals(bArr3, f7175M)) {
                    z2 = true;
                }
                if (z && z2) {
                    c1061b.close();
                    return true;
                }
            }
        }
        c1061b.close();
        return false;
    }

    /* renamed from: x */
    public final boolean m4451x(byte[] bArr) throws IOException {
        C1061b c1061b = null;
        try {
            C1061b c1061b2 = new C1061b(bArr);
            try {
                ByteOrder m4418K = m4418K(c1061b2);
                this.f7284h = m4418K;
                c1061b2.setByteOrder(m4418K);
                short readShort = c1061b2.readShort();
                boolean z = readShort == 20306 || readShort == 21330;
                c1061b2.close();
                return z;
            } catch (Exception unused) {
                c1061b = c1061b2;
                if (c1061b != null) {
                    c1061b.close();
                }
                return false;
            } catch (Throwable th) {
                th = th;
                c1061b = c1061b2;
                if (c1061b != null) {
                    c1061b.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: y */
    public final boolean m4452y(byte[] bArr) throws IOException {
        int i = 0;
        while (true) {
            byte[] bArr2 = f7205W;
            if (i >= bArr2.length) {
                return true;
            }
            if (bArr[i] != bArr2[i]) {
                return false;
            }
            i++;
        }
    }

    /* renamed from: z */
    public final boolean m4453z(byte[] bArr) throws IOException {
        byte[] bytes = f7163I.getBytes(Charset.defaultCharset());
        for (int i = 0; i < bytes.length; i++) {
            if (bArr[i] != bytes[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: androidx.exifinterface.media.ExifInterface$g */
    /* loaded from: classes3.dex */
    public static class C1066g extends C1061b {
        public C1066g(byte[] bArr) throws IOException {
            super(bArr);
            this.f7303e.mark(Integer.MAX_VALUE);
        }

        public void seek(long j) throws IOException {
            int i = this.f7305g;
            if (i > j) {
                this.f7305g = 0;
                this.f7303e.reset();
            } else {
                j -= i;
            }
            m4454f((int) j);
        }

        public C1066g(InputStream inputStream) throws IOException {
            super(inputStream);
            if (inputStream.markSupported()) {
                this.f7303e.mark(Integer.MAX_VALUE);
                return;
            }
            throw new IllegalArgumentException("Cannot create SeekableByteOrderedDataInputStream with stream that does not support mark/reset");
        }
    }

    @Nullable
    public double[] getLatLong() {
        String attribute = getAttribute(TAG_GPS_LATITUDE);
        String attribute2 = getAttribute(TAG_GPS_LATITUDE_REF);
        String attribute3 = getAttribute(TAG_GPS_LONGITUDE);
        String attribute4 = getAttribute(TAG_GPS_LONGITUDE_REF);
        if (attribute == null || attribute2 == null || attribute3 == null || attribute4 == null) {
            return null;
        }
        try {
            return new double[]{m4407c(attribute, attribute2), m4407c(attribute3, attribute4)};
        } catch (IllegalArgumentException unused) {
            Log.w(f7262v, "Latitude/longitude values are not parsable. " + String.format("latValue=%s, latRef=%s, lngValue=%s, lngRef=%s", attribute, attribute2, attribute3, attribute4));
            return null;
        }
    }

    /* renamed from: androidx.exifinterface.media.ExifInterface$e */
    /* loaded from: classes3.dex */
    public static class C1064e {

        /* renamed from: a */
        public final int f7314a;

        /* renamed from: b */
        public final String f7315b;

        /* renamed from: c */
        public final int f7316c;

        /* renamed from: d */
        public final int f7317d;

        public C1064e(String str, int i, int i2) {
            this.f7315b = str;
            this.f7314a = i;
            this.f7316c = i2;
            this.f7317d = -1;
        }

        /* renamed from: a */
        public boolean m4477a(int i) {
            int i2;
            int i3 = this.f7316c;
            if (i3 == 7 || i == 7 || i3 == i || (i2 = this.f7317d) == i) {
                return true;
            }
            if ((i3 == 4 || i2 == 4) && i == 3) {
                return true;
            }
            if ((i3 == 9 || i2 == 9) && i == 8) {
                return true;
            }
            return (i3 == 12 || i2 == 12) && i == 11;
        }

        public C1064e(String str, int i, int i2, int i3) {
            this.f7315b = str;
            this.f7314a = i;
            this.f7316c = i2;
            this.f7317d = i3;
        }
    }

    public ExifInterface(@NonNull String str) throws IOException {
        C1064e[][] c1064eArr = f7235h1;
        this.f7282f = new HashMap[c1064eArr.length];
        this.f7283g = new HashSet(c1064eArr.length);
        this.f7284h = ByteOrder.BIG_ENDIAN;
        if (str != null) {
            m4449t(str);
            return;
        }
        throw new NullPointerException("filename cannot be null");
    }

    public ExifInterface(@NonNull FileDescriptor fileDescriptor) throws IOException {
        boolean z;
        C1064e[][] c1064eArr = f7235h1;
        this.f7282f = new HashMap[c1064eArr.length];
        this.f7283g = new HashSet(c1064eArr.length);
        this.f7284h = ByteOrder.BIG_ENDIAN;
        if (fileDescriptor != null) {
            FileInputStream fileInputStream = null;
            this.f7279c = null;
            this.f7277a = null;
            if (m4403B(fileDescriptor)) {
                this.f7278b = fileDescriptor;
                try {
                    fileDescriptor = C1067a.a.m4488b(fileDescriptor);
                    z = true;
                } catch (Exception e) {
                    throw new IOException("Failed to duplicate file descriptor", e);
                }
            } else {
                this.f7278b = null;
                z = false;
            }
            try {
                FileInputStream fileInputStream2 = new FileInputStream(fileDescriptor);
                try {
                    m4415G(fileInputStream2);
                    C1067a.m4481c(fileInputStream2);
                    if (z) {
                        C1067a.m4480b(fileDescriptor);
                    }
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    C1067a.m4481c(fileInputStream);
                    if (z) {
                        C1067a.m4480b(fileDescriptor);
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            throw new NullPointerException("fileDescriptor cannot be null");
        }
    }

    public ExifInterface(@NonNull InputStream inputStream) throws IOException {
        this(inputStream, 0);
    }

    public ExifInterface(@NonNull InputStream inputStream, int i) throws IOException {
        C1064e[][] c1064eArr = f7235h1;
        this.f7282f = new HashMap[c1064eArr.length];
        this.f7283g = new HashSet(c1064eArr.length);
        this.f7284h = ByteOrder.BIG_ENDIAN;
        if (inputStream != null) {
            this.f7277a = null;
            if (i == 1) {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, f7249o1.length);
                if (!m4409u(bufferedInputStream)) {
                    Log.w(f7262v, "Given data does not follow the structure of an Exif-only data.");
                    return;
                }
                this.f7281e = true;
                this.f7279c = null;
                this.f7278b = null;
                inputStream = bufferedInputStream;
            } else if (inputStream instanceof AssetManager.AssetInputStream) {
                this.f7279c = (AssetManager.AssetInputStream) inputStream;
                this.f7278b = null;
            } else {
                if (inputStream instanceof FileInputStream) {
                    FileInputStream fileInputStream = (FileInputStream) inputStream;
                    if (m4403B(fileInputStream.getFD())) {
                        this.f7279c = null;
                        this.f7278b = fileInputStream.getFD();
                    }
                }
                this.f7279c = null;
                this.f7278b = null;
            }
            m4415G(inputStream);
            return;
        }
        throw new NullPointerException("inputStream cannot be null");
    }
}
