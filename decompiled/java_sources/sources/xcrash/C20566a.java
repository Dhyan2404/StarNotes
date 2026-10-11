package xcrash;

import android.annotation.SuppressLint;
import android.os.Process;
import android.text.TextUtils;
import com.sunia.HTREnginev2.C14288q6;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;
import org.apache.commons.collections4.MapUtils;

@SuppressLint({"StaticFieldLeak"})
/* renamed from: xcrash.a */
/* loaded from: classes16.dex */
public class C20566a implements Thread.UncaughtExceptionHandler {

    /* renamed from: r */
    public static final C20566a f116486r = new C20566a();

    /* renamed from: b */
    public int f116488b;

    /* renamed from: c */
    public String f116489c;

    /* renamed from: d */
    public String f116490d;

    /* renamed from: e */
    public String f116491e;

    /* renamed from: f */
    public boolean f116492f;

    /* renamed from: g */
    public String f116493g;

    /* renamed from: h */
    public int f116494h;

    /* renamed from: i */
    public int f116495i;

    /* renamed from: j */
    public int f116496j;

    /* renamed from: k */
    public boolean f116497k;

    /* renamed from: l */
    public boolean f116498l;

    /* renamed from: m */
    public boolean f116499m;

    /* renamed from: n */
    public int f116500n;

    /* renamed from: o */
    public String[] f116501o;

    /* renamed from: p */
    public ICrashCallback f116502p;

    /* renamed from: a */
    public final Date f116487a = new Date();

    /* renamed from: q */
    public Thread.UncaughtExceptionHandler f116503q = null;

    /* renamed from: c */
    public static C20566a m72107c() {
        return f116486r;
    }

    /* renamed from: a */
    public final String m72108a(String str) {
        ArrayList arrayList = new ArrayList();
        if (!str.contains("UnsatisfiedLinkError")) {
            return "";
        }
        String str2 = null;
        for (String str3 : str.split("\"")) {
            if (!str3.isEmpty() && str3.endsWith(".so")) {
                arrayList.add(str3);
                String substring = str3.substring(str3.lastIndexOf(47) + 1);
                arrayList.add(XCrash.nativeLibDir + "/" + substring);
                StringBuilder sb = new StringBuilder();
                sb.append("/vendor/lib/");
                sb.append(substring);
                arrayList.add(sb.toString());
                arrayList.add("/vendor/lib64/" + substring);
                arrayList.add("/system/lib/" + substring);
                arrayList.add("/system/lib64/" + substring);
                str2 = m72110d(arrayList);
            }
        }
        return "build id:\n" + str2 + "\n";
    }

    /* renamed from: b */
    public final String m72109b(Date date, Thread thread, Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        String stringWriter2 = stringWriter.toString();
        return Util.m72094i(this.f116487a, date, "java", this.f116490d, this.f116491e) + "pid: " + this.f116488b + ", tid: " + Process.myTid() + ", name: " + thread.getName() + "  >>> " + this.f116489c + " <<<\n\njava stacktrace:\n" + stringWriter2 + "\n" + m72108a(stringWriter2);
    }

    /* renamed from: d */
    public final String m72110d(List<String> list) {
        StringBuilder sb = new StringBuilder();
        for (String str : list) {
            File file = new File(str);
            if (file.exists() && file.isFile()) {
                String m72093h = Util.m72093h(file);
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(Util.f116419g, Locale.US);
                Date date = new Date(file.lastModified());
                sb.append(MapUtils.f104930a);
                sb.append(str);
                sb.append("(BuildId: unknown. FileSize: ");
                sb.append(file.length());
                sb.append(". LastModified: ");
                sb.append(simpleDateFormat.format(date));
                sb.append(". MD5: ");
                sb.append(m72093h);
                sb.append(")\n");
            } else {
                sb.append(MapUtils.f104930a);
                sb.append(str);
                sb.append(" (Not found)\n");
            }
        }
        return sb.toString();
    }

    /* renamed from: e */
    public final String m72111e(Thread thread) {
        ArrayList<Pattern> arrayList;
        if (this.f116501o != null) {
            arrayList = new ArrayList<>();
            for (String str : this.f116501o) {
                try {
                    arrayList.add(Pattern.compile(str));
                } catch (Exception e) {
                    XCrash.m72106c().mo57494w("xcrash", "JavaCrashHandler pattern compile failed", e);
                }
            }
        } else {
            arrayList = null;
        }
        StringBuilder sb = new StringBuilder();
        Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        for (Map.Entry<Thread, StackTraceElement[]> entry : allStackTraces.entrySet()) {
            Thread key = entry.getKey();
            StackTraceElement[] value = entry.getValue();
            if (!key.getName().equals(thread.getName()) && (arrayList == null || m72114h(arrayList, key.getName()))) {
                i2++;
                int i4 = this.f116500n;
                if (i4 <= 0 || i < i4) {
                    sb.append("--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n");
                    sb.append("pid: ");
                    sb.append(this.f116488b);
                    sb.append(", tid: ");
                    sb.append(key.getId());
                    sb.append(", name: ");
                    sb.append(key.getName());
                    sb.append("  >>> ");
                    sb.append(this.f116489c);
                    sb.append(" <<<\n");
                    sb.append("\n");
                    sb.append("java stacktrace:\n");
                    for (StackTraceElement stackTraceElement : value) {
                        sb.append("    at ");
                        sb.append(stackTraceElement.toString());
                        sb.append("\n");
                    }
                    sb.append("\n");
                    i++;
                } else {
                    i3++;
                }
            }
        }
        if (allStackTraces.size() > 1) {
            if (i == 0) {
                sb.append("--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n");
            }
            sb.append("total JVM threads (exclude the crashed thread): ");
            sb.append(allStackTraces.size() - 1);
            sb.append("\n");
            if (arrayList != null) {
                sb.append("JVM threads matched whitelist: ");
                sb.append(i2);
                sb.append("\n");
            }
            if (this.f116500n > 0) {
                sb.append("JVM threads ignored by max count limit: ");
                sb.append(i3);
                sb.append("\n");
            }
            sb.append("dumped JVM threads:");
            sb.append(i);
            sb.append("\n");
            sb.append("+++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++\n");
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x011c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m72112f(java.lang.Thread r11, java.lang.Throwable r12) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: xcrash.C20566a.m72112f(java.lang.Thread, java.lang.Throwable):void");
    }

    /* renamed from: g */
    public void m72113g(int i, String str, String str2, String str3, String str4, boolean z, int i2, int i3, int i4, boolean z2, boolean z3, boolean z4, int i5, String[] strArr, ICrashCallback iCrashCallback) {
        this.f116488b = i;
        if (TextUtils.isEmpty(str)) {
            str = "unknown";
        }
        this.f116489c = str;
        this.f116490d = str2;
        this.f116491e = str3;
        this.f116492f = z;
        this.f116493g = str4;
        this.f116494h = i2;
        this.f116495i = i3;
        this.f116496j = i4;
        this.f116497k = z2;
        this.f116498l = z3;
        this.f116499m = z4;
        this.f116500n = i5;
        this.f116501o = strArr;
        this.f116502p = iCrashCallback;
        this.f116503q = Thread.getDefaultUncaughtExceptionHandler();
        try {
            Thread.setDefaultUncaughtExceptionHandler(this);
        } catch (Exception e) {
            XCrash.m72106c().mo57488e("xcrash", "JavaCrashHandler setDefaultUncaughtExceptionHandler failed", e);
        }
    }

    /* renamed from: h */
    public final boolean m72114h(ArrayList<Pattern> arrayList, String str) {
        Iterator<Pattern> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            if (it2.next().matcher(str).matches()) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f116503q;
        if (uncaughtExceptionHandler != null) {
            Thread.setDefaultUncaughtExceptionHandler(uncaughtExceptionHandler);
        }
        try {
            m72112f(thread, th);
        } catch (Exception e) {
            XCrash.m72106c().mo57488e("xcrash", "JavaCrashHandler handleException failed", e);
        }
        if (!this.f116492f) {
            C14288q6.m56651d().m56652c();
            Process.killProcess(this.f116488b);
            System.exit(10);
        } else {
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.f116503q;
            if (uncaughtExceptionHandler2 != null) {
                uncaughtExceptionHandler2.uncaughtException(thread, th);
            }
        }
    }
}
