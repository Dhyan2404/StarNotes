package javax.imageio.plugins.tiff;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public final class ExifParentTIFFTagSet extends TIFFTagSet {
    public static final int TAG_EXIF_IFD_POINTER = 34665;
    public static final int TAG_GPS_INFO_IFD_POINTER = 34853;

    /* renamed from: c */
    public static ExifParentTIFFTagSet f97927c;

    /* renamed from: d */
    public static List<TIFFTag> f97928d;

    /* renamed from: javax.imageio.plugins.tiff.ExifParentTIFFTagSet$a */
    /* loaded from: classes5.dex */
    public static class C17814a extends TIFFTag {
        public C17814a() {
            super(ExifInterface.f7268x, 34665, ExifTIFFTagSet.getInstance());
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.ExifParentTIFFTagSet$b */
    /* loaded from: classes5.dex */
    public static class C17815b extends TIFFTag {
        public C17815b() {
            super(ExifInterface.f7271y, 34853, ExifGPSTagSet.getInstance());
        }
    }

    private ExifParentTIFFTagSet() {
        super(f97928d);
    }

    /* renamed from: a */
    public static void m61480a() {
        ArrayList arrayList = new ArrayList(1);
        f97928d = arrayList;
        arrayList.add(new C17814a());
        f97928d.add(new C17815b());
    }

    public static synchronized ExifParentTIFFTagSet getInstance() {
        ExifParentTIFFTagSet exifParentTIFFTagSet;
        synchronized (ExifParentTIFFTagSet.class) {
            if (f97927c == null) {
                m61480a();
                f97927c = new ExifParentTIFFTagSet();
                f97928d = null;
            }
            exifParentTIFFTagSet = f97927c;
        }
        return exifParentTIFFTagSet;
    }
}
