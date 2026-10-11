package javax.imageio.plugins.tiff;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public final class ExifGPSTagSet extends TIFFTagSet {
    public static final int ALTITUDE_REF_SEA_LEVEL = 0;
    public static final int ALTITUDE_REF_SEA_LEVEL_REFERENCE = 1;
    public static final String DEST_DISTANCE_REF_KILOMETERS = "K";
    public static final String DEST_DISTANCE_REF_KNOTS = "N";
    public static final String DEST_DISTANCE_REF_MILES = "M";
    public static final int DIFFERENTIAL_CORRECTION_APPLIED = 1;
    public static final int DIFFERENTIAL_CORRECTION_NONE = 0;
    public static final String DIRECTION_REF_MAGNETIC = "M";
    public static final String DIRECTION_REF_TRUE = "T";
    public static final String GPS_VERSION_2_2 = "2200";
    public static final String LATITUDE_REF_NORTH = "N";
    public static final String LATITUDE_REF_SOUTH = "S";
    public static final String LONGITUDE_REF_EAST = "E";
    public static final String LONGITUDE_REF_WEST = "W";
    public static final String MEASURE_MODE_2D = "2";
    public static final String MEASURE_MODE_3D = "3";
    public static final String SPEED_REF_KILOMETERS_PER_HOUR = "K";
    public static final String SPEED_REF_KNOTS = "N";
    public static final String SPEED_REF_MILES_PER_HOUR = "M";
    public static final String STATUS_MEASUREMENT_INTEROPERABILITY = "V";
    public static final String STATUS_MEASUREMENT_IN_PROGRESS = "A";
    public static final int TAG_GPS_ALTITUDE = 6;
    public static final int TAG_GPS_ALTITUDE_REF = 5;
    public static final int TAG_GPS_AREA_INFORMATION = 28;
    public static final int TAG_GPS_DATE_STAMP = 29;
    public static final int TAG_GPS_DEST_BEARING = 24;
    public static final int TAG_GPS_DEST_BEARING_REF = 23;
    public static final int TAG_GPS_DEST_DISTANCE = 26;
    public static final int TAG_GPS_DEST_DISTANCE_REF = 25;
    public static final int TAG_GPS_DEST_LATITUDE = 20;
    public static final int TAG_GPS_DEST_LATITUDE_REF = 19;
    public static final int TAG_GPS_DEST_LONGITUDE = 22;
    public static final int TAG_GPS_DEST_LONGITUDE_REF = 21;
    public static final int TAG_GPS_DIFFERENTIAL = 30;
    public static final int TAG_GPS_DOP = 11;
    public static final int TAG_GPS_IMG_DIRECTION = 17;
    public static final int TAG_GPS_IMG_DIRECTION_REF = 16;
    public static final int TAG_GPS_LATITUDE = 2;
    public static final int TAG_GPS_LATITUDE_REF = 1;
    public static final int TAG_GPS_LONGITUDE = 4;
    public static final int TAG_GPS_LONGITUDE_REF = 3;
    public static final int TAG_GPS_MAP_DATUM = 18;
    public static final int TAG_GPS_MEASURE_MODE = 10;
    public static final int TAG_GPS_PROCESSING_METHOD = 27;
    public static final int TAG_GPS_SATELLITES = 8;
    public static final int TAG_GPS_SPEED = 13;
    public static final int TAG_GPS_SPEED_REF = 12;
    public static final int TAG_GPS_STATUS = 9;
    public static final int TAG_GPS_TIME_STAMP = 7;
    public static final int TAG_GPS_TRACK = 15;
    public static final int TAG_GPS_TRACK_REF = 14;
    public static final int TAG_GPS_VERSION_ID = 0;

    /* renamed from: c */
    public static ExifGPSTagSet f97924c;

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$a */
    /* loaded from: classes5.dex */
    public static class C17782a extends TIFFTag {
        public C17782a() {
            super(ExifInterface.TAG_GPS_ALTITUDE, 6, 32);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$a0 */
    /* loaded from: classes5.dex */
    public static class C17783a0 extends TIFFTag {
        public C17783a0() {
            super(ExifInterface.TAG_GPS_STATUS, 9, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$b */
    /* loaded from: classes5.dex */
    public static class C17784b extends TIFFTag {
        public C17784b() {
            super(ExifInterface.TAG_GPS_ALTITUDE_REF, 5, 2);
            addValueName(0, "Sea level");
            addValueName(1, "Sea level reference (negative value)");
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$b0 */
    /* loaded from: classes5.dex */
    public static class C17785b0 extends TIFFTag {
        public C17785b0() {
            super(ExifInterface.TAG_GPS_TIMESTAMP, 7, 32);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$c */
    /* loaded from: classes5.dex */
    public static class C17786c extends TIFFTag {
        public C17786c() {
            super(ExifInterface.TAG_GPS_AREA_INFORMATION, 28, 128);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$c0 */
    /* loaded from: classes5.dex */
    public static class C17787c0 extends TIFFTag {
        public C17787c0() {
            super(ExifInterface.TAG_GPS_TRACK, 15, 32);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$d */
    /* loaded from: classes5.dex */
    public static class C17788d extends TIFFTag {
        public C17788d() {
            super(ExifInterface.TAG_GPS_DOP, 11, 32);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$d0 */
    /* loaded from: classes5.dex */
    public static class C17789d0 extends TIFFTag {
        public C17789d0() {
            super(ExifInterface.TAG_GPS_TRACK_REF, 14, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$e */
    /* loaded from: classes5.dex */
    public static class C17790e extends TIFFTag {
        public C17790e() {
            super(ExifInterface.TAG_GPS_DATESTAMP, 29, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$e0 */
    /* loaded from: classes5.dex */
    public static class C17791e0 extends TIFFTag {
        public C17791e0() {
            super(ExifInterface.TAG_GPS_VERSION_ID, 0, 2);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$f */
    /* loaded from: classes5.dex */
    public static class C17792f extends TIFFTag {
        public C17792f() {
            super(ExifInterface.TAG_GPS_DEST_BEARING, 24, 32);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$g */
    /* loaded from: classes5.dex */
    public static class C17793g extends TIFFTag {
        public C17793g() {
            super(ExifInterface.TAG_GPS_DEST_BEARING_REF, 23, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$h */
    /* loaded from: classes5.dex */
    public static class C17794h extends TIFFTag {
        public C17794h() {
            super(ExifInterface.TAG_GPS_DEST_DISTANCE, 26, 32);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$i */
    /* loaded from: classes5.dex */
    public static class C17795i extends TIFFTag {
        public C17795i() {
            super(ExifInterface.TAG_GPS_DEST_DISTANCE_REF, 25, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$j */
    /* loaded from: classes5.dex */
    public static class C17796j extends TIFFTag {
        public C17796j() {
            super(ExifInterface.TAG_GPS_DEST_LATITUDE, 20, 32);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$k */
    /* loaded from: classes5.dex */
    public static class C17797k extends TIFFTag {
        public C17797k() {
            super(ExifInterface.TAG_GPS_DEST_LATITUDE_REF, 19, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$l */
    /* loaded from: classes5.dex */
    public static class C17798l extends TIFFTag {
        public C17798l() {
            super(ExifInterface.TAG_GPS_DEST_LONGITUDE, 22, 32);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$m */
    /* loaded from: classes5.dex */
    public static class C17799m extends TIFFTag {
        public C17799m() {
            super(ExifInterface.TAG_GPS_DEST_LONGITUDE_REF, 21, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$n */
    /* loaded from: classes5.dex */
    public static class C17800n extends TIFFTag {
        public C17800n() {
            super(ExifInterface.TAG_GPS_DIFFERENTIAL, 30, 8);
            addValueName(0, "Measurement without differential correction");
            addValueName(1, "Differential correction applied");
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$o */
    /* loaded from: classes5.dex */
    public static class C17801o extends TIFFTag {
        public C17801o() {
            super(ExifInterface.TAG_GPS_IMG_DIRECTION, 17, 32);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$p */
    /* loaded from: classes5.dex */
    public static class C17802p extends TIFFTag {
        public C17802p() {
            super(ExifInterface.TAG_GPS_IMG_DIRECTION_REF, 16, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$q */
    /* loaded from: classes5.dex */
    public static class C17803q extends TIFFTag {
        public C17803q() {
            super(ExifInterface.TAG_GPS_LATITUDE, 2, 32);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$r */
    /* loaded from: classes5.dex */
    public static class C17804r extends TIFFTag {
        public C17804r() {
            super(ExifInterface.TAG_GPS_LATITUDE_REF, 1, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$s */
    /* loaded from: classes5.dex */
    public static class C17805s extends TIFFTag {
        public C17805s() {
            super(ExifInterface.TAG_GPS_LONGITUDE, 4, 32);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$t */
    /* loaded from: classes5.dex */
    public static class C17806t extends TIFFTag {
        public C17806t() {
            super(ExifInterface.TAG_GPS_LONGITUDE_REF, 3, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$u */
    /* loaded from: classes5.dex */
    public static class C17807u extends TIFFTag {
        public C17807u() {
            super(ExifInterface.TAG_GPS_MAP_DATUM, 18, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$v */
    /* loaded from: classes5.dex */
    public static class C17808v extends TIFFTag {
        public C17808v() {
            super(ExifInterface.TAG_GPS_MEASURE_MODE, 10, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$w */
    /* loaded from: classes5.dex */
    public static class C17809w extends TIFFTag {
        public C17809w() {
            super(ExifInterface.TAG_GPS_PROCESSING_METHOD, 27, 128);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$x */
    /* loaded from: classes5.dex */
    public static class C17810x extends TIFFTag {
        public C17810x() {
            super(ExifInterface.TAG_GPS_SATELLITES, 8, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$y */
    /* loaded from: classes5.dex */
    public static class C17811y extends TIFFTag {
        public C17811y() {
            super(ExifInterface.TAG_GPS_SPEED, 13, 32);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifGPSTagSet$z */
    /* loaded from: classes5.dex */
    public static class C17812z extends TIFFTag {
        public C17812z() {
            super(ExifInterface.TAG_GPS_SPEED_REF, 12, 4);
        }
    }

    private ExifGPSTagSet() {
        super(m61478a());
    }

    /* renamed from: a */
    public static List<TIFFTag> m61478a() {
        ArrayList arrayList = new ArrayList(31);
        arrayList.add(new C17791e0());
        arrayList.add(new C17804r());
        arrayList.add(new C17803q());
        arrayList.add(new C17806t());
        arrayList.add(new C17805s());
        arrayList.add(new C17784b());
        arrayList.add(new C17782a());
        arrayList.add(new C17785b0());
        arrayList.add(new C17810x());
        arrayList.add(new C17783a0());
        arrayList.add(new C17808v());
        arrayList.add(new C17788d());
        arrayList.add(new C17812z());
        arrayList.add(new C17811y());
        arrayList.add(new C17789d0());
        arrayList.add(new C17787c0());
        arrayList.add(new C17802p());
        arrayList.add(new C17801o());
        arrayList.add(new C17807u());
        arrayList.add(new C17797k());
        arrayList.add(new C17796j());
        arrayList.add(new C17799m());
        arrayList.add(new C17798l());
        arrayList.add(new C17793g());
        arrayList.add(new C17792f());
        arrayList.add(new C17795i());
        arrayList.add(new C17794h());
        arrayList.add(new C17809w());
        arrayList.add(new C17786c());
        arrayList.add(new C17790e());
        arrayList.add(new C17800n());
        return arrayList;
    }

    public static synchronized ExifGPSTagSet getInstance() {
        ExifGPSTagSet exifGPSTagSet;
        synchronized (ExifGPSTagSet.class) {
            if (f97924c == null) {
                f97924c = new ExifGPSTagSet();
            }
            exifGPSTagSet = f97924c;
        }
        return exifGPSTagSet;
    }
}
