package com.sunia.HTREnginev2;

import androidx.exifinterface.media.ExifInterface;
import com.twelvemonkeys.imageio.metadata.AbstractEntry;
import com.twelvemonkeys.imageio.metadata.exif.EXIF;
import com.twelvemonkeys.imageio.metadata.exif.TIFF;

/* loaded from: classes10.dex */
public final class fkf extends AbstractEntry {

    /* renamed from: c */
    public final short f70094c;

    public fkf(int i, Object obj, short s) {
        super(Integer.valueOf(i), obj);
        if (s < 1 || s >= TIFF.TYPE_NAMES.length) {
            throw new IllegalArgumentException(String.format("Illegal TIFF type: %s", Short.valueOf(s)));
        }
        this.f70094c = s;
    }

    /* renamed from: d */
    public short m54126d() {
        return this.f70094c;
    }

    @Override // com.twelvemonkeys.imageio.metadata.AbstractEntry, com.twelvemonkeys.imageio.metadata.Entry
    public String getFieldName() {
        switch (((Integer) getIdentifier()).intValue()) {
            case 254:
                return ExifInterface.TAG_SUBFILE_TYPE;
            case 256:
                return ExifInterface.TAG_IMAGE_WIDTH;
            case 257:
                return "ImageHeight";
            case 258:
                return ExifInterface.TAG_BITS_PER_SAMPLE;
            case 259:
                return ExifInterface.TAG_COMPRESSION;
            case 262:
                return ExifInterface.TAG_PHOTOMETRIC_INTERPRETATION;
            case 266:
                return "FillOrder";
            case 269:
                return "DocumentName";
            case 270:
                return ExifInterface.TAG_IMAGE_DESCRIPTION;
            case 271:
                return ExifInterface.TAG_MAKE;
            case 272:
                return "Model";
            case 273:
                return ExifInterface.TAG_STRIP_OFFSETS;
            case 274:
                return ExifInterface.TAG_ORIENTATION;
            case 277:
                return ExifInterface.TAG_SAMPLES_PER_PIXEL;
            case 278:
                return ExifInterface.TAG_ROWS_PER_STRIP;
            case 279:
                return ExifInterface.TAG_STRIP_BYTE_COUNTS;
            case 282:
                return ExifInterface.TAG_X_RESOLUTION;
            case 283:
                return ExifInterface.TAG_Y_RESOLUTION;
            case 284:
                return ExifInterface.TAG_PLANAR_CONFIGURATION;
            case 285:
                return "PageName";
            case 296:
                return ExifInterface.TAG_RESOLUTION_UNIT;
            case 297:
                return "PageNumber";
            case 305:
                return ExifInterface.TAG_SOFTWARE;
            case 306:
                return ExifInterface.TAG_DATETIME;
            case 315:
                return ExifInterface.TAG_ARTIST;
            case 316:
                return "HostComputer";
            case 317:
                return "Predictor";
            case 320:
                return "ColorMap";
            case 322:
                return "TileWidth";
            case 323:
                return "TileHeight";
            case 324:
                return "TileOffsets";
            case 325:
                return "TileByteCounts";
            case 330:
                return "SubIFD";
            case 332:
                return "InkSet";
            case 333:
                return "InkNames";
            case 338:
                return "ExtraSamples";
            case 339:
                return "SampleFormat";
            case 347:
                return "JPEGTables";
            case 513:
                return ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT;
            case 514:
                return ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH;
            case 530:
                return ExifInterface.TAG_Y_CB_CR_SUB_SAMPLING;
            case 531:
                return ExifInterface.TAG_Y_CB_CR_POSITIONING;
            case 700:
                return "XMP";
            case 33432:
                return ExifInterface.TAG_COPYRIGHT;
            case 33434:
                return ExifInterface.TAG_EXPOSURE_TIME;
            case 33437:
                return "FNUmber";
            case TIFF.TAG_IPTC /* 33723 */:
                return "IPTC";
            case TIFF.TAG_PHOTOSHOP /* 34377 */:
                return "Adobe";
            case 34665:
                return "EXIF";
            case 34675:
                return "ICCProfile";
            case 34850:
                return ExifInterface.TAG_EXPOSURE_PROGRAM;
            case 34853:
                return "GPS";
            case 34855:
                return ExifInterface.TAG_ISO_SPEED_RATINGS;
            case 36864:
                return ExifInterface.TAG_EXIF_VERSION;
            case 36867:
                return ExifInterface.TAG_DATETIME_ORIGINAL;
            case 36868:
                return ExifInterface.TAG_DATETIME_DIGITIZED;
            case 37121:
                return ExifInterface.TAG_COMPONENTS_CONFIGURATION;
            case 37122:
                return ExifInterface.TAG_COMPRESSED_BITS_PER_PIXEL;
            case 37377:
                return ExifInterface.TAG_SHUTTER_SPEED_VALUE;
            case 37378:
                return ExifInterface.TAG_APERTURE_VALUE;
            case 37379:
                return ExifInterface.TAG_BRIGHTNESS_VALUE;
            case 37380:
                return ExifInterface.TAG_EXPOSURE_BIAS_VALUE;
            case 37381:
                return ExifInterface.TAG_MAX_APERTURE_VALUE;
            case 37382:
                return ExifInterface.TAG_SUBJECT_DISTANCE;
            case 37383:
                return ExifInterface.TAG_METERING_MODE;
            case 37384:
                return ExifInterface.TAG_LIGHT_SOURCE;
            case 37385:
                return ExifInterface.TAG_FLASH;
            case 37386:
                return ExifInterface.TAG_FOCAL_LENGTH;
            case EXIF.TAG_IMAGE_NUMBER /* 37393 */:
                return "ImageNumber";
            case 37500:
                return ExifInterface.TAG_MAKER_NOTE;
            case 37510:
                return ExifInterface.TAG_USER_COMMENT;
            case TIFF.TAG_PHOTOSHOP_IMAGE_SOURCE_DATA /* 37724 */:
                return "ImageSourceData";
            case 40960:
                return ExifInterface.TAG_FLASHPIX_VERSION;
            case 40961:
                return ExifInterface.TAG_COLOR_SPACE;
            case 40962:
                return ExifInterface.TAG_PIXEL_X_DIMENSION;
            case 40963:
                return ExifInterface.TAG_PIXEL_Y_DIMENSION;
            case 40965:
                return "Interoperability";
            case 41495:
                return ExifInterface.TAG_SENSING_METHOD;
            case 41728:
                return ExifInterface.TAG_FILE_SOURCE;
            case 41729:
                return ExifInterface.TAG_SCENE_TYPE;
            case 41730:
                return ExifInterface.TAG_CFA_PATTERN;
            case 41985:
                return ExifInterface.TAG_CUSTOM_RENDERED;
            case 41986:
                return ExifInterface.TAG_EXPOSURE_MODE;
            case 41987:
                return ExifInterface.TAG_WHITE_BALANCE;
            case 41988:
                return ExifInterface.TAG_DIGITAL_ZOOM_RATIO;
            case 41989:
                return ExifInterface.TAG_FOCAL_LENGTH_IN_35MM_FILM;
            case 41990:
                return ExifInterface.TAG_SCENE_CAPTURE_TYPE;
            case 41991:
                return ExifInterface.TAG_GAIN_CONTROL;
            case 41992:
                return ExifInterface.TAG_CONTRAST;
            case 41993:
                return ExifInterface.TAG_SATURATION;
            case 41994:
                return ExifInterface.TAG_SHARPNESS;
            case 42016:
                return ExifInterface.TAG_IMAGE_UNIQUE_ID;
            default:
                return null;
        }
    }

    @Override // com.twelvemonkeys.imageio.metadata.AbstractEntry, com.twelvemonkeys.imageio.metadata.Entry
    public String getTypeName() {
        return TIFF.TYPE_NAMES[this.f70094c];
    }
}
