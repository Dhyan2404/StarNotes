package xcrash;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Debug;
import android.os.Process;
import android.system.Os;
import android.text.TextUtils;
import androidx.appcompat.widget.ActivityChooserModel;
import com.bumptech.glide.load.engine.GlideException;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.FilenameFilter;
import java.lang.reflect.InvocationTargetException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* loaded from: classes16.dex */
public class Util {

    /* renamed from: a */
    public static final String f116413a = "%21s %8s\n";

    /* renamed from: b */
    public static final String f116414b = "%21s %8s %21s %8s\n";

    /* renamed from: c */
    public static final String f116415c = "xcrash";

    /* renamed from: d */
    public static final String f116416d = "*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***";

    /* renamed from: e */
    public static final String f116417e = "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---";

    /* renamed from: f */
    public static final String f116418f = "+++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++";

    /* renamed from: g */
    public static final String f116419g = "yyyy-MM-dd'T'HH:mm:ss.SSSZ";

    /* renamed from: h */
    public static final String f116420h = "java";

    /* renamed from: i */
    public static final String f116421i = "native";

    /* renamed from: j */
    public static final String f116422j = "anr";

    /* renamed from: k */
    public static final String f116423k = "tombstone";

    /* renamed from: l */
    public static final String f116424l = ".java.xcrash";

    /* renamed from: m */
    public static final String f116425m = ".native.xcrash";

    /* renamed from: n */
    public static final String f116426n = ".anr.xcrash";

    /* renamed from: o */
    public static final String f116427o = ".trace.xcrash";

    /* renamed from: p */
    public static final String[] f116428p = {"/data/local/su", "/data/local/bin/su", "/data/local/xbin/su", "/system/xbin/su", "/system/bin/su", "/system/bin/.ext/su", "/system/bin/failsafe/su", "/system/sd/xbin/su", "/system/usr/we-need-root/su", "/sbin/su", "/su/bin/su"};

    /* loaded from: classes16.dex */
    public static class Rom {
        public static final String ROM_EMUI = "EMUI";
        public static final String ROM_FLYME = "FLYME";
        public static final String ROM_MIUI = "MIUI";
        public static final String ROM_OPPO = "OPPO";
        public static final String ROM_QIKU = "QIKU";
        public static final String ROM_SMARTISAN = "SMARTISAN";
        public static final String ROM_VIVO = "VIVO";

        /* renamed from: a */
        public static final String f116429a = "Rom";

        /* renamed from: b */
        public static final String f116430b = "ro.miui.ui.version.name";

        /* renamed from: c */
        public static final String f116431c = "ro.build.version.emui";

        /* renamed from: d */
        public static final String f116432d = "ro.build.version.opporom";

        /* renamed from: e */
        public static final String f116433e = "ro.smartisan.version";

        /* renamed from: f */
        public static final String f116434f = "ro.vivo.os.version";

        /* renamed from: g */
        public static String f116435g;

        /* renamed from: h */
        public static String f116436h;

        public static boolean check(String str) {
            String str2 = f116435g;
            if (str2 != null) {
                return str2.equals(str);
            }
            String prop = getProp(f116430b);
            f116436h = prop;
            if (TextUtils.isEmpty(prop)) {
                String prop2 = getProp("ro.build.version.emui");
                f116436h = prop2;
                if (TextUtils.isEmpty(prop2)) {
                    String prop3 = getProp("ro.build.version.opporom");
                    f116436h = prop3;
                    if (TextUtils.isEmpty(prop3)) {
                        String prop4 = getProp(f116434f);
                        f116436h = prop4;
                        if (TextUtils.isEmpty(prop4)) {
                            String prop5 = getProp(f116433e);
                            f116436h = prop5;
                            if (TextUtils.isEmpty(prop5)) {
                                String str3 = Build.DISPLAY;
                                f116436h = str3;
                                if (str3.toUpperCase().contains(ROM_FLYME)) {
                                    f116435g = ROM_FLYME;
                                } else {
                                    f116436h = "unknown";
                                    f116435g = Build.MANUFACTURER.toUpperCase();
                                }
                            } else {
                                f116435g = ROM_SMARTISAN;
                            }
                        } else {
                            f116435g = "VIVO";
                        }
                    } else {
                        f116435g = "OPPO";
                    }
                } else {
                    f116435g = ROM_EMUI;
                }
            } else {
                f116435g = ROM_MIUI;
            }
            return f116435g.equals(str);
        }

        public static String getName() {
            if (f116435g == null) {
                check("");
            }
            return f116435g;
        }

        /* JADX WARN: Not initialized variable reg: 2, insn: 0x0062: MOVE (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:25:0x0062 */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0065 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.String getProp(java.lang.String r6) {
            /*
                r0 = 0
                java.lang.Runtime r1 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L3e
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L3e
                r2.<init>()     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L3e
                java.lang.String r3 = "getprop "
                r2.append(r3)     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L3e
                r2.append(r6)     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L3e
                java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L3e
                java.lang.Process r1 = r1.exec(r2)     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L3e
                java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L3e
                java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L3e
                java.io.InputStream r1 = r1.getInputStream()     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L3e
                r3.<init>(r1)     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L3e
                r1 = 1024(0x400, float:1.435E-42)
                r2.<init>(r3, r1)     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L3e
                java.lang.String r1 = r2.readLine()     // Catch: java.io.IOException -> L3a java.lang.Throwable -> L61
                r2.close()     // Catch: java.io.IOException -> L3a java.lang.Throwable -> L61
                r2.close()     // Catch: java.io.IOException -> L35
                goto L39
            L35:
                r6 = move-exception
                r6.printStackTrace()
            L39:
                return r1
            L3a:
                r1 = move-exception
                goto L40
            L3c:
                r6 = move-exception
                goto L63
            L3e:
                r1 = move-exception
                r2 = r0
            L40:
                java.lang.String r3 = "Rom"
                java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L61
                r4.<init>()     // Catch: java.lang.Throwable -> L61
                java.lang.String r5 = "Unable to read prop "
                r4.append(r5)     // Catch: java.lang.Throwable -> L61
                r4.append(r6)     // Catch: java.lang.Throwable -> L61
                java.lang.String r6 = r4.toString()     // Catch: java.lang.Throwable -> L61
                android.util.Log.e(r3, r6, r1)     // Catch: java.lang.Throwable -> L61
                if (r2 == 0) goto L60
                r2.close()     // Catch: java.io.IOException -> L5c
                goto L60
            L5c:
                r6 = move-exception
                r6.printStackTrace()
            L60:
                return r0
            L61:
                r6 = move-exception
                r0 = r2
            L63:
                if (r0 == 0) goto L6d
                r0.close()     // Catch: java.io.IOException -> L69
                goto L6d
            L69:
                r0 = move-exception
                r0.printStackTrace()
            L6d:
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: xcrash.Util.Rom.getProp(java.lang.String):java.lang.String");
        }

        public static String getVersion() {
            if (f116436h == null) {
                check("");
            }
            return f116436h;
        }

        public static boolean is360() {
            return check(ROM_QIKU) || check("360");
        }

        public static boolean isEmui() {
            return check(ROM_EMUI);
        }

        public static boolean isFlyme() {
            return check(ROM_FLYME);
        }

        public static boolean isMiui() {
            return check(ROM_MIUI);
        }

        public static boolean isOppo() {
            return check("OPPO");
        }

        public static boolean isSmartisan() {
            return check(ROM_SMARTISAN);
        }

        public static boolean isVivo() {
            return check("VIVO");
        }
    }

    /* renamed from: xcrash.Util$a */
    /* loaded from: classes16.dex */
    public class C20564a implements FilenameFilter {
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return TextUtils.isDigitsOnly(str);
        }
    }

    /* renamed from: a */
    public static boolean m72086a(String str) {
        File file = new File(str);
        try {
            if (file.exists()) {
                return file.isDirectory();
            }
            file.mkdirs();
            return file.exists() && file.isDirectory();
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: b */
    public static boolean m72087b(Context context, long j) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService(ActivityChooserModel.f1429r);
        if (activityManager == null) {
            return false;
        }
        int myPid = Process.myPid();
        long j2 = j / 500;
        for (int i = 0; i < j2; i++) {
            List<ActivityManager.ProcessErrorStateInfo> processesInErrorState = activityManager.getProcessesInErrorState();
            if (processesInErrorState != null) {
                XCrash.m72106c().mo57487e("xcrash", "processErrorList is NOT null !!!!, i = " + i);
                for (ActivityManager.ProcessErrorStateInfo processErrorStateInfo : processesInErrorState) {
                    XCrash.m72106c().mo57487e("xcrash", "errorStateInfo.pid = " + processErrorStateInfo.pid + ", my pid = " + myPid + ", errorStateInfo.condition = " + processErrorStateInfo.condition);
                    if (processErrorStateInfo.pid == myPid && processErrorStateInfo.condition == 2) {
                        return true;
                    }
                }
            } else {
                XCrash.m72106c().mo57487e("xcrash", "processErrorList is null !!!! poll = " + j2 + ", i = " + i);
            }
            try {
                Thread.sleep(500L);
            } catch (Exception unused) {
            }
        }
        return false;
    }

    /* renamed from: c */
    public static String m72088c() {
        return TextUtils.join(",", Build.SUPPORTED_ABIS);
    }

    /* renamed from: d */
    public static String m72089d(Context context) {
        String str;
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception unused) {
            str = null;
        }
        return TextUtils.isEmpty(str) ? "unknown" : str;
    }

    /* renamed from: e */
    public static String m72090e() {
        String str;
        StringBuilder sb = new StringBuilder("open files:\n");
        try {
            File[] listFiles = new File("/proc/self/fd").listFiles(new C20564a());
            if (listFiles != null) {
                int i = 0;
                for (File file : listFiles) {
                    try {
                        str = Os.readlink(file.getAbsolutePath());
                    } catch (Exception unused) {
                        str = null;
                    }
                    sb.append("    fd ");
                    sb.append(file.getName());
                    sb.append(": ");
                    sb.append(TextUtils.isEmpty(str) ? "???" : str.trim());
                    sb.append('\n');
                    i++;
                    if (i > 1024) {
                        break;
                    }
                }
                if (listFiles.length > 1024) {
                    sb.append("    ......\n");
                }
                sb.append("    (number of FDs: ");
                sb.append(listFiles.length);
                sb.append(")\n");
            }
        } catch (Exception unused2) {
        }
        sb.append('\n');
        return sb.toString();
    }

    /* renamed from: f */
    public static String m72091f(String str) {
        return m72092g(str, 0);
    }

    /* renamed from: g */
    public static String m72092g(String str, int i) {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            try {
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new FileReader(str));
                    int i2 = 0;
                    while (true) {
                        try {
                            String readLine = bufferedReader2.readLine();
                            if (readLine == null) {
                                break;
                            }
                            String trim = readLine.trim();
                            if (trim.length() > 0) {
                                i2++;
                                if (i == 0 || i2 <= i) {
                                    sb.append(GlideException.C1935a.f14609h);
                                    sb.append(trim);
                                    sb.append("\n");
                                }
                            }
                        } catch (Exception e) {
                            e = e;
                            bufferedReader = bufferedReader2;
                            XCrash.m72106c().mo57490i("xcrash", "Util getInfo(" + str + ") failed", e);
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            return sb.toString();
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception unused) {
                                }
                            }
                            throw th;
                        }
                    }
                    if (i > 0 && i2 > i) {
                        sb.append("  ......\n");
                        sb.append("  (number of records: ");
                        sb.append(i2);
                        sb.append(")\n");
                    }
                    bufferedReader2.close();
                } catch (Exception unused2) {
                    return sb.toString();
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: h */
    public static String m72093h(File file) {
        if (!file.exists()) {
            return null;
        }
        byte[] bArr = new byte[1024];
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            FileInputStream fileInputStream = new FileInputStream(file);
            while (true) {
                int read = fileInputStream.read(bArr, 0, 1024);
                if (read == -1) {
                    fileInputStream.close();
                    return String.format("%032x", new BigInteger(1, messageDigest.digest()));
                }
                messageDigest.update(bArr, 0, read);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: i */
    public static String m72094i(Date date, Date date2, String str, String str2, String str3) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(f116419g, Locale.US);
        StringBuilder sb = new StringBuilder();
        sb.append("*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***\nTombstone maker: 'xCrash 3.1.0'\nCrash type: '");
        sb.append(str);
        sb.append("'\nStart time: '");
        sb.append(simpleDateFormat.format(date));
        sb.append("'\nCrash time: '");
        sb.append(simpleDateFormat.format(date2));
        sb.append("'\nApp ID: '");
        sb.append(str2);
        sb.append("'\nApp version: '");
        sb.append(str3);
        sb.append("'\nRooted: '");
        sb.append(m72103r() ? "Yes" : "No");
        sb.append("'\nAPI level: '");
        sb.append(Build.VERSION.SDK_INT);
        sb.append("'\nOS version: '");
        sb.append(Build.VERSION.RELEASE);
        sb.append("'\nABI list: '");
        sb.append(m72088c());
        sb.append("'\nManufacturer: '");
        sb.append(Build.MANUFACTURER);
        sb.append("'\nBrand: '");
        sb.append(Build.BRAND);
        sb.append("'\nModel: '");
        sb.append(m72098m());
        sb.append("'\nBuild fingerprint: '");
        sb.append(Build.FINGERPRINT);
        sb.append("'\n");
        return sb.toString();
    }

    /* renamed from: j */
    public static String m72095j(int i, int i2, int i3) {
        int myPid = Process.myPid();
        StringBuilder sb = new StringBuilder();
        sb.append("logcat:\n");
        if (i > 0) {
            m72096k(myPid, sb, "main", i, 'D');
        }
        if (i2 > 0) {
            m72096k(myPid, sb, "system", i2, 'W');
        }
        if (i3 > 0) {
            m72096k(myPid, sb, "events", i2, 'I');
        }
        sb.append("\n");
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.io.BufferedReader] */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m72096k(int r3, java.lang.StringBuilder r4, java.lang.String r5, int r6, char r7) {
        /*
            java.lang.String r3 = java.lang.Integer.toString(r3)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = " "
            r0.append(r1)
            r0.append(r3)
            r0.append(r1)
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.lang.String r2 = "/system/bin/logcat"
            r0.add(r2)
            java.lang.String r2 = "-b"
            r0.add(r2)
            r0.add(r5)
            java.lang.String r2 = "-d"
            r0.add(r2)
            java.lang.String r2 = "-v"
            r0.add(r2)
            java.lang.String r2 = "threadtime"
            r0.add(r2)
            java.lang.String r2 = "-t"
            r0.add(r2)
            java.lang.String r6 = java.lang.Integer.toString(r6)
            r0.add(r6)
            java.lang.String r6 = "--pid"
            r0.add(r6)
            r0.add(r3)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r6 = "*:"
            r3.append(r6)
            r3.append(r7)
            java.lang.String r3 = r3.toString()
            r0.add(r3)
            java.lang.Object[] r3 = r0.toArray()
            java.lang.String r6 = "--------- tail end of log "
            r4.append(r6)
            r4.append(r5)
            java.lang.String r5 = " ("
            r4.append(r5)
            java.lang.String r3 = android.text.TextUtils.join(r1, r3)
            r4.append(r3)
            java.lang.String r3 = ")\n"
            r4.append(r3)
            r3 = 0
            java.lang.ProcessBuilder r5 = new java.lang.ProcessBuilder     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb2
            r6 = 0
            java.lang.String[] r6 = new java.lang.String[r6]     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb2
            r5.<init>(r6)     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb2
            java.lang.ProcessBuilder r5 = r5.command(r0)     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb2
            java.lang.Process r5 = r5.start()     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb2
            java.io.BufferedReader r6 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb2
            java.io.InputStreamReader r7 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb2
            java.io.InputStream r5 = r5.getInputStream()     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb2
            r7.<init>(r5)     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb2
            r6.<init>(r7)     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb2
        L99:
            java.lang.String r3 = r6.readLine()     // Catch: java.lang.Exception -> Lac java.lang.Throwable -> Lc4
            if (r3 == 0) goto La8
            r4.append(r3)     // Catch: java.lang.Exception -> Lac java.lang.Throwable -> Lc4
            java.lang.String r3 = "\n"
            r4.append(r3)     // Catch: java.lang.Exception -> Lac java.lang.Throwable -> Lc4
            goto L99
        La8:
            r6.close()     // Catch: java.io.IOException -> Lc3
            goto Lc3
        Lac:
            r3 = move-exception
            goto Lb5
        Lae:
            r4 = move-exception
            r6 = r3
            r3 = r4
            goto Lc5
        Lb2:
            r4 = move-exception
            r6 = r3
            r3 = r4
        Lb5:
            xcrash.ILogger r4 = xcrash.XCrash.m72106c()     // Catch: java.lang.Throwable -> Lc4
            java.lang.String r5 = "xcrash"
            java.lang.String r7 = "Util run logcat command failed"
            r4.mo57494w(r5, r7, r3)     // Catch: java.lang.Throwable -> Lc4
            if (r6 == 0) goto Lc3
            goto La8
        Lc3:
            return
        Lc4:
            r3 = move-exception
        Lc5:
            if (r6 == 0) goto Lca
            r6.close()     // Catch: java.io.IOException -> Lca
        Lca:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: xcrash.Util.m72096k(int, java.lang.StringBuilder, java.lang.String, int, char):void");
    }

    /* renamed from: l */
    public static String m72097l() {
        return "memory info:\n System Summary (From: /proc/meminfo)\n" + m72091f("/proc/meminfo") + "-\n Process Status (From: /proc/PID/status)\n" + m72091f("/proc/self/status") + "-\n Process Limits (From: /proc/PID/limits)\n" + m72091f("/proc/self/limits") + "-\n" + m72100o() + "\n";
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:8:? A[RETURN, SYNTHETIC] */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m72098m() {
        /*
            java.lang.Class<java.lang.String> r0 = java.lang.String.class
            boolean r1 = xcrash.Util.Rom.isMiui()
            java.lang.String r2 = ""
            if (r1 == 0) goto L63
            java.lang.String r1 = "android.os.SystemProperties"
            java.lang.Class r1 = java.lang.Class.forName(r1)     // Catch: java.lang.ClassNotFoundException -> L4b java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L57 java.lang.reflect.InvocationTargetException -> L5d
            java.lang.String r3 = "get"
            r4 = 2
            java.lang.Class[] r5 = new java.lang.Class[r4]     // Catch: java.lang.ClassNotFoundException -> L4b java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L57 java.lang.reflect.InvocationTargetException -> L5d
            r6 = 0
            r5[r6] = r0     // Catch: java.lang.ClassNotFoundException -> L4b java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L57 java.lang.reflect.InvocationTargetException -> L5d
            r7 = 1
            r5[r7] = r0     // Catch: java.lang.ClassNotFoundException -> L4b java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L57 java.lang.reflect.InvocationTargetException -> L5d
            java.lang.reflect.Method r0 = r1.getDeclaredMethod(r3, r5)     // Catch: java.lang.ClassNotFoundException -> L4b java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L57 java.lang.reflect.InvocationTargetException -> L5d
            java.lang.Object[] r3 = new java.lang.Object[r4]     // Catch: java.lang.ClassNotFoundException -> L4b java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L57 java.lang.reflect.InvocationTargetException -> L5d
            java.lang.String r5 = "ro.product.marketname"
            r3[r6] = r5     // Catch: java.lang.ClassNotFoundException -> L4b java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L57 java.lang.reflect.InvocationTargetException -> L5d
            r3[r7] = r2     // Catch: java.lang.ClassNotFoundException -> L4b java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L57 java.lang.reflect.InvocationTargetException -> L5d
            java.lang.Object r3 = r0.invoke(r1, r3)     // Catch: java.lang.ClassNotFoundException -> L4b java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L57 java.lang.reflect.InvocationTargetException -> L5d
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.ClassNotFoundException -> L4b java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L57 java.lang.reflect.InvocationTargetException -> L5d
            boolean r5 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.ClassNotFoundException -> L43 java.lang.IllegalAccessException -> L45 java.lang.NoSuchMethodException -> L47 java.lang.reflect.InvocationTargetException -> L49
            if (r5 == 0) goto L65
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.ClassNotFoundException -> L43 java.lang.IllegalAccessException -> L45 java.lang.NoSuchMethodException -> L47 java.lang.reflect.InvocationTargetException -> L49
            java.lang.String r5 = "ro.product.model"
            r4[r6] = r5     // Catch: java.lang.ClassNotFoundException -> L43 java.lang.IllegalAccessException -> L45 java.lang.NoSuchMethodException -> L47 java.lang.reflect.InvocationTargetException -> L49
            r4[r7] = r2     // Catch: java.lang.ClassNotFoundException -> L43 java.lang.IllegalAccessException -> L45 java.lang.NoSuchMethodException -> L47 java.lang.reflect.InvocationTargetException -> L49
            java.lang.Object r0 = r0.invoke(r1, r4)     // Catch: java.lang.ClassNotFoundException -> L43 java.lang.IllegalAccessException -> L45 java.lang.NoSuchMethodException -> L47 java.lang.reflect.InvocationTargetException -> L49
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.ClassNotFoundException -> L43 java.lang.IllegalAccessException -> L45 java.lang.NoSuchMethodException -> L47 java.lang.reflect.InvocationTargetException -> L49
            r3 = r0
            goto L65
        L43:
            r0 = move-exception
            goto L4d
        L45:
            r0 = move-exception
            goto L53
        L47:
            r0 = move-exception
            goto L59
        L49:
            r0 = move-exception
            goto L5f
        L4b:
            r0 = move-exception
            r3 = r2
        L4d:
            r0.printStackTrace()
            goto L65
        L51:
            r0 = move-exception
            r3 = r2
        L53:
            r0.printStackTrace()
            goto L65
        L57:
            r0 = move-exception
            r3 = r2
        L59:
            r0.printStackTrace()
            goto L65
        L5d:
            r0 = move-exception
            r3 = r2
        L5f:
            r0.printStackTrace()
            goto L65
        L63:
            java.lang.String r3 = android.os.Build.MODEL
        L65:
            if (r3 != 0) goto L68
            goto L69
        L68:
            r2 = r3
        L69:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: xcrash.Util.m72098m():java.lang.String");
    }

    /* renamed from: n */
    public static String m72099n() {
        return "network info:\nNot supported on Android Q (API level 29) and later.\n\n";
    }

    /* renamed from: o */
    public static String m72100o() {
        StringBuilder sb = new StringBuilder();
        sb.append(" Process Summary (From: android.os.Debug.MemoryInfo)\n");
        Locale locale = Locale.US;
        sb.append(String.format(locale, f116413a, "", "Pss(KB)"));
        sb.append(String.format(locale, f116413a, "", "------"));
        try {
            Debug.MemoryInfo memoryInfo = new Debug.MemoryInfo();
            Debug.getMemoryInfo(memoryInfo);
            sb.append(String.format(locale, f116413a, "Java Heap:", memoryInfo.getMemoryStat("summary.java-heap")));
            sb.append(String.format(locale, f116413a, "Native Heap:", memoryInfo.getMemoryStat("summary.native-heap")));
            sb.append(String.format(locale, f116413a, "Code:", memoryInfo.getMemoryStat("summary.code")));
            sb.append(String.format(locale, f116413a, "Stack:", memoryInfo.getMemoryStat("summary.stack")));
            sb.append(String.format(locale, f116413a, "Graphics:", memoryInfo.getMemoryStat("summary.graphics")));
            sb.append(String.format(locale, f116413a, "Private Other:", memoryInfo.getMemoryStat("summary.private-other")));
            sb.append(String.format(locale, f116413a, "System:", memoryInfo.getMemoryStat("summary.system")));
            sb.append(String.format(locale, f116414b, "TOTAL:", memoryInfo.getMemoryStat("summary.total-pss"), "TOTAL SWAP:", memoryInfo.getMemoryStat("summary.total-swap")));
        } catch (Exception e) {
            XCrash.m72106c().mo57490i("xcrash", "Util getProcessMemoryInfo failed", e);
        }
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0049, code lost:
    
        if (r0 == null) goto L22;
     */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m72101p(android.content.Context r4, int r5) {
        /*
            r4 = 0
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L48
            java.io.FileReader r1 = new java.io.FileReader     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L48
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L48
            r2.<init>()     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L48
            java.lang.String r3 = "/proc/"
            r2.append(r3)     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L48
            r2.append(r5)     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L48
            java.lang.String r5 = "/cmdline"
            r2.append(r5)     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L48
            java.lang.String r5 = r2.toString()     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L48
            r1.<init>(r5)     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L48
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L48
            java.lang.String r5 = r0.readLine()     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L49
            boolean r1 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L49
            if (r1 != 0) goto L39
            java.lang.String r5 = r5.trim()     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L49
            boolean r1 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L49
            if (r1 != 0) goto L39
            r0.close()     // Catch: java.lang.Exception -> L38
        L38:
            return r5
        L39:
            r0.close()     // Catch: java.lang.Exception -> L4c
            goto L4c
        L3d:
            r4 = move-exception
            goto L42
        L3f:
            r5 = move-exception
            r0 = r4
            r4 = r5
        L42:
            if (r0 == 0) goto L47
            r0.close()     // Catch: java.lang.Exception -> L47
        L47:
            throw r4
        L48:
            r0 = r4
        L49:
            if (r0 == 0) goto L4c
            goto L39
        L4c:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: xcrash.Util.m72101p(android.content.Context, int):java.lang.String");
    }

    /* renamed from: q */
    public static String m72102q(String str, String str2) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, str2);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return str2;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return str2;
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
            return str2;
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
            return str2;
        }
    }

    /* renamed from: r */
    public static boolean m72103r() {
        try {
            for (String str : f116428p) {
                if (new File(str).exists()) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
