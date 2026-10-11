package javax.imageio.plugins.tiff;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public final class FaxTIFFTagSet extends TIFFTagSet {
    public static final int CLEAN_FAX_DATA_ERRORS_CORRECTED = 1;
    public static final int CLEAN_FAX_DATA_ERRORS_UNCORRECTED = 2;
    public static final int CLEAN_FAX_DATA_NO_ERRORS = 0;
    public static final int TAG_BAD_FAX_LINES = 326;
    public static final int TAG_CLEAN_FAX_DATA = 327;
    public static final int TAG_CONSECUTIVE_BAD_LINES = 328;

    /* renamed from: c */
    public static FaxTIFFTagSet f97931c;

    /* renamed from: d */
    public static List<TIFFTag> f97932d;

    /* renamed from: javax.imageio.plugins.tiff.FaxTIFFTagSet$a */
    /* loaded from: classes5.dex */
    public static class C17873a extends TIFFTag {
        public C17873a() {
            super("BadFaxLines", 326, 24, 1);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.FaxTIFFTagSet$b */
    /* loaded from: classes5.dex */
    public static class C17874b extends TIFFTag {
        public C17874b() {
            super("CleanFaxData", 327, 8, 1);
            addValueName(0, "No errors");
            addValueName(1, "Errors corrected");
            addValueName(2, "Errors uncorrected");
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.FaxTIFFTagSet$c */
    /* loaded from: classes5.dex */
    public static class C17875c extends TIFFTag {
        public C17875c() {
            super("ConsecutiveBadFaxLines", 328, 24, 1);
        }
    }

    private FaxTIFFTagSet() {
        super(f97932d);
    }

    /* renamed from: a */
    public static void m61482a() {
        ArrayList arrayList = new ArrayList(42);
        f97932d = arrayList;
        arrayList.add(new C17873a());
        f97932d.add(new C17874b());
        f97932d.add(new C17875c());
    }

    public static synchronized FaxTIFFTagSet getInstance() {
        FaxTIFFTagSet faxTIFFTagSet;
        synchronized (FaxTIFFTagSet.class) {
            if (f97931c == null) {
                m61482a();
                f97931c = new FaxTIFFTagSet();
                f97932d = null;
            }
            faxTIFFTagSet = f97931c;
        }
        return faxTIFFTagSet;
    }
}
