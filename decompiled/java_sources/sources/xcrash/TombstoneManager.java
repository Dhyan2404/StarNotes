package xcrash;

import android.text.TextUtils;
import com.sunia.HTREnginev2.ygg;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes16.dex */
public class TombstoneManager {

    /* renamed from: xcrash.TombstoneManager$a */
    /* loaded from: classes16.dex */
    public class C20560a implements FilenameFilter {

        /* renamed from: e */
        public final /* synthetic */ String[] f116402e;

        public C20560a(String[] strArr) {
            this.f116402e = strArr;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            if (!str.startsWith("tombstone_")) {
                return false;
            }
            for (String str2 : this.f116402e) {
                if (str.endsWith(str2)) {
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: xcrash.TombstoneManager$b */
    /* loaded from: classes16.dex */
    public class C20561b implements Comparator<File> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            return file.getName().compareTo(file2.getName());
        }
    }

    /* renamed from: xcrash.TombstoneManager$c */
    /* loaded from: classes16.dex */
    public class C20562c implements FilenameFilter {

        /* renamed from: e */
        public final /* synthetic */ String[] f116403e;

        public C20562c(String[] strArr) {
            this.f116403e = strArr;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            if (!str.startsWith("tombstone_")) {
                return false;
            }
            for (String str2 : this.f116403e) {
                if (str.endsWith(str2)) {
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m72077a(String[] strArr) {
        File[] listFiles;
        String logDir = XCrash.getLogDir();
        if (logDir == null) {
            return false;
        }
        File file = new File(logDir);
        if (!file.exists() || !file.isDirectory() || (listFiles = file.listFiles(new C20562c(strArr))) == null) {
            return false;
        }
        boolean z = true;
        for (File file2 : listFiles) {
            if (!ygg.m58407l().m58419q(file2)) {
                z = false;
            }
        }
        return z;
    }

    public static boolean appendSection(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || str3 == null) {
            return false;
        }
        return ygg.m58407l().m58408e(str, "\n\n" + str2 + ":\n" + str3 + "\n\n");
    }

    /* renamed from: b */
    public static File[] m72078b(String[] strArr) {
        String logDir = XCrash.getLogDir();
        if (logDir == null) {
            return new File[0];
        }
        File file = new File(logDir);
        if (!file.exists() || !file.isDirectory()) {
            return new File[0];
        }
        File[] listFiles = file.listFiles(new C20560a(strArr));
        if (listFiles == null) {
            return new File[0];
        }
        Arrays.sort(listFiles, new C20561b());
        return listFiles;
    }

    public static boolean clearAllTombstones() {
        return m72077a(new String[]{Util.f116424l, Util.f116425m, Util.f116426n});
    }

    public static boolean clearAnrTombstones() {
        return m72077a(new String[]{Util.f116426n});
    }

    public static boolean clearJavaTombstones() {
        return m72077a(new String[]{Util.f116424l});
    }

    public static boolean clearNativeTombstones() {
        return m72077a(new String[]{Util.f116425m});
    }

    public static boolean deleteTombstone(File file) {
        return ygg.m58407l().m58419q(file);
    }

    public static File[] getAllTombstones() {
        return m72078b(new String[]{Util.f116424l, Util.f116425m, Util.f116426n});
    }

    public static File[] getAnrTombstones() {
        return m72078b(new String[]{Util.f116426n});
    }

    public static File[] getJavaTombstones() {
        return m72078b(new String[]{Util.f116424l});
    }

    public static File[] getNativeTombstones() {
        return m72078b(new String[]{Util.f116425m});
    }

    public static boolean isAnr(File file) {
        return file.getName().endsWith(Util.f116426n);
    }

    public static boolean isJavaCrash(File file) {
        return file.getName().endsWith(Util.f116424l);
    }

    public static boolean isNativeCrash(File file) {
        return file.getName().endsWith(Util.f116425m);
    }

    public static boolean deleteTombstone(String str) {
        return ygg.m58407l().m58419q(new File(str));
    }
}
