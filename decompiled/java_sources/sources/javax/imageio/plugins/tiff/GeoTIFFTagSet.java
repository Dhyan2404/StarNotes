package javax.imageio.plugins.tiff;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public final class GeoTIFFTagSet extends TIFFTagSet {
    public static final int TAG_GEO_ASCII_PARAMS = 34737;
    public static final int TAG_GEO_DOUBLE_PARAMS = 34736;
    public static final int TAG_GEO_KEY_DIRECTORY = 34735;
    public static final int TAG_MODEL_PIXEL_SCALE = 33550;
    public static final int TAG_MODEL_TIE_POINT = 33922;
    public static final int TAG_MODEL_TRANSFORMATION = 34264;

    /* renamed from: c */
    public static GeoTIFFTagSet f97933c;

    /* renamed from: d */
    public static List<TIFFTag> f97934d;

    /* renamed from: javax.imageio.plugins.tiff.GeoTIFFTagSet$a */
    /* loaded from: classes5.dex */
    public static class C17876a extends TIFFTag {
        public C17876a() {
            super("GeoAsciiParamsTag", GeoTIFFTagSet.TAG_GEO_ASCII_PARAMS, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.GeoTIFFTagSet$b */
    /* loaded from: classes5.dex */
    public static class C17877b extends TIFFTag {
        public C17877b() {
            super("GeoDoubleParamsTag", GeoTIFFTagSet.TAG_GEO_DOUBLE_PARAMS, 4096);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.GeoTIFFTagSet$c */
    /* loaded from: classes5.dex */
    public static class C17878c extends TIFFTag {
        public C17878c() {
            super("GeoKeyDirectoryTag", GeoTIFFTagSet.TAG_GEO_KEY_DIRECTORY, 8);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.GeoTIFFTagSet$d */
    /* loaded from: classes5.dex */
    public static class C17879d extends TIFFTag {
        public C17879d() {
            super("ModelPixelScaleTag", GeoTIFFTagSet.TAG_MODEL_PIXEL_SCALE, 4096);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.GeoTIFFTagSet$e */
    /* loaded from: classes5.dex */
    public static class C17880e extends TIFFTag {
        public C17880e() {
            super("ModelTiepointTag", GeoTIFFTagSet.TAG_MODEL_TIE_POINT, 4096);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.GeoTIFFTagSet$f */
    /* loaded from: classes5.dex */
    public static class C17881f extends TIFFTag {
        public C17881f() {
            super("ModelTransformationTag", GeoTIFFTagSet.TAG_MODEL_TRANSFORMATION, 4096);
        }
    }

    private GeoTIFFTagSet() {
        super(f97934d);
    }

    /* renamed from: a */
    public static void m61483a() {
        ArrayList arrayList = new ArrayList(42);
        f97934d = arrayList;
        arrayList.add(new C17879d());
        f97934d.add(new C17881f());
        f97934d.add(new C17880e());
        f97934d.add(new C17878c());
        f97934d.add(new C17877b());
        f97934d.add(new C17876a());
    }

    public static synchronized GeoTIFFTagSet getInstance() {
        GeoTIFFTagSet geoTIFFTagSet;
        synchronized (GeoTIFFTagSet.class) {
            if (f97933c == null) {
                m61483a();
                f97933c = new GeoTIFFTagSet();
                f97934d = null;
            }
            geoTIFFTagSet = f97933c;
        }
        return geoTIFFTagSet;
    }
}
