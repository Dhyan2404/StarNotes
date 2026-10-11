package javax.imageio.plugins.tiff;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public final class ExifInteroperabilityTagSet extends TIFFTagSet {
    public static final String INTEROPERABILITY_INDEX_R98 = "R98";
    public static final String INTEROPERABILITY_INDEX_THM = "THM";
    public static final int TAG_INTEROPERABILITY_INDEX = 1;

    /* renamed from: c */
    public static ExifInteroperabilityTagSet f97925c;

    /* renamed from: d */
    public static List<TIFFTag> f97926d;

    /* renamed from: javax.imageio.plugins.tiff.ExifInteroperabilityTagSet$a */
    /* loaded from: classes5.dex */
    public static class C17813a extends TIFFTag {
        public C17813a() {
            super(ExifInterface.TAG_INTEROPERABILITY_INDEX, 1, 4);
        }
    }

    private ExifInteroperabilityTagSet() {
        super(f97926d);
    }

    /* renamed from: a */
    public static void m61479a() {
        ArrayList arrayList = new ArrayList(42);
        f97926d = arrayList;
        arrayList.add(new C17813a());
    }

    public static synchronized ExifInteroperabilityTagSet getInstance() {
        ExifInteroperabilityTagSet exifInteroperabilityTagSet;
        synchronized (ExifInteroperabilityTagSet.class) {
            if (f97925c == null) {
                m61479a();
                f97925c = new ExifInteroperabilityTagSet();
                f97926d = null;
            }
            exifInteroperabilityTagSet = f97925c;
        }
        return exifInteroperabilityTagSet;
    }
}
