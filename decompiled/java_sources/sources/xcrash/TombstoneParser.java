package xcrash;

import android.os.Build;
import android.text.TextUtils;
import com.sunia.HTREnginev2.y0o;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.StringReader;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.collections4.MapUtils;

/* loaded from: classes16.dex */
public class TombstoneParser {
    public static final String keyCode = "code";
    public static final String keyFaultAddr = "fault addr";
    public static final String keyForeground = "foreground";
    public static final String keyMemoryInfo = "memory info";
    public static final String keyMemoryNear = "memory near";
    public static final String keyModel = "Model";
    public static final String keyNetworkInfo = "network info";
    public static final String keyOtherThreads = "other threads";
    public static final String keyProcessId = "pid";
    public static final String keyProcessName = "pname";
    public static final String keyRegisters = "registers";
    public static final String keySignal = "signal";
    public static final String keyThreadId = "tid";
    public static final String keyThreadName = "tname";

    /* renamed from: a */
    public static final Pattern f116404a = Pattern.compile("^(.*):\\s'(.*?)'$");

    /* renamed from: b */
    public static final Pattern f116405b = Pattern.compile("^pid:\\s(.*),\\stid:\\s(.*),\\sname:\\s(.*)\\s+>>>\\s(.*)\\s<<<$");

    /* renamed from: c */
    public static final Pattern f116406c = Pattern.compile("^pid:\\s(.*)\\s+>>>\\s(.*)\\s<<<$");

    /* renamed from: d */
    public static final Pattern f116407d = Pattern.compile("^signal\\s(.*),\\scode\\s(.*),\\sfault\\saddr\\s(.*)$");

    /* renamed from: e */
    public static final Pattern f116408e = Pattern.compile("^(\\d{20})_(.*)__(.*)$");
    public static final String keyTombstoneMaker = "Tombstone maker";
    public static final String keyCrashType = "Crash type";
    public static final String keyStartTime = "Start time";
    public static final String keyCrashTime = "Crash time";
    public static final String keyAppId = "App ID";
    public static final String keyAppVersion = "App version";
    public static final String keyRooted = "Rooted";
    public static final String keyApiLevel = "API level";
    public static final String keyOsVersion = "OS version";
    public static final String keyKernelVersion = "Kernel version";
    public static final String keyAbiList = "ABI list";
    public static final String keyManufacturer = "Manufacturer";
    public static final String keyBrand = "Brand";
    public static final String keyBuildFingerprint = "Build fingerprint";
    public static final String keyAbi = "ABI";
    public static final String keyAbortMessage = "Abort message";

    /* renamed from: f */
    public static final Set<String> f116409f = new HashSet(Arrays.asList(keyTombstoneMaker, keyCrashType, keyStartTime, keyCrashTime, keyAppId, keyAppVersion, keyRooted, keyApiLevel, keyOsVersion, keyKernelVersion, keyAbiList, keyManufacturer, keyBrand, "Model", keyBuildFingerprint, keyAbi, keyAbortMessage));
    public static final String keyBacktrace = "backtrace";
    public static final String keyBuildId = "build id";
    public static final String keyStack = "stack";
    public static final String keyMemoryMap = "memory map";
    public static final String keyLogcat = "logcat";
    public static final String keyOpenFiles = "open files";
    public static final String keyJavaStacktrace = "java stacktrace";
    public static final String keyXCrashError = "xcrash error";
    public static final String keyXCrashErrorDebug = "xcrash error debug";

    /* renamed from: g */
    public static final Set<String> f116410g = new HashSet(Arrays.asList(keyBacktrace, keyBuildId, keyStack, keyMemoryMap, keyLogcat, keyOpenFiles, keyJavaStacktrace, keyXCrashError, keyXCrashErrorDebug));

    /* renamed from: h */
    public static final Set<String> f116411h = new HashSet(Arrays.asList("foreground"));

    /* loaded from: classes16.dex */
    public enum Status {
        UNKNOWN,
        HEAD,
        SECTION
    }

    /* renamed from: xcrash.TombstoneParser$a */
    /* loaded from: classes16.dex */
    public static /* synthetic */ class C20563a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f116412a;

        static {
            int[] iArr = new int[Status.values().length];
            f116412a = iArr;
            try {
                iArr[Status.UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f116412a[Status.HEAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f116412a[Status.SECTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: a */
    public static void m72080a(Map<String, String> map) {
        if (TextUtils.isEmpty(map.get(keyAppId))) {
            map.put(keyAppId, XCrash.m72104a());
        }
        if (TextUtils.isEmpty(map.get(keyTombstoneMaker))) {
            map.put(keyTombstoneMaker, y0o.f90291b);
        }
        if (TextUtils.isEmpty(map.get(keyRooted))) {
            map.put(keyRooted, Util.m72103r() ? "Yes" : "No");
        }
        if (TextUtils.isEmpty(map.get(keyApiLevel))) {
            map.put(keyApiLevel, String.valueOf(Build.VERSION.SDK_INT));
        }
        if (TextUtils.isEmpty(map.get(keyOsVersion))) {
            map.put(keyOsVersion, Build.VERSION.RELEASE);
        }
        if (TextUtils.isEmpty(map.get(keyBuildFingerprint))) {
            map.put("Model", Build.FINGERPRINT);
        }
        if (TextUtils.isEmpty(map.get(keyManufacturer))) {
            map.put(keyManufacturer, Build.MANUFACTURER);
        }
        if (TextUtils.isEmpty(map.get(keyBrand))) {
            map.put(keyBrand, Build.BRAND);
        }
        if (TextUtils.isEmpty(map.get("Model"))) {
            map.put("Model", Util.m72098m());
        }
        if (TextUtils.isEmpty(map.get(keyAbiList))) {
            map.put(keyAbiList, Util.m72088c());
        }
    }

    /* renamed from: b */
    public static void m72081b(Map<String, String> map, String str) {
        String substring;
        if (str == null) {
            return;
        }
        if (TextUtils.isEmpty(map.get(keyCrashTime))) {
            map.put(keyCrashTime, new SimpleDateFormat(Util.f116419g, Locale.US).format(new Date(new File(str).lastModified())));
        }
        String str2 = map.get(keyStartTime);
        String str3 = map.get(keyAppVersion);
        String str4 = map.get(keyProcessName);
        String str5 = map.get(keyCrashType);
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4) || TextUtils.isEmpty(str5)) {
            String substring2 = str.substring(str.lastIndexOf(47) + 1);
            if (!substring2.isEmpty() && substring2.startsWith("tombstone_")) {
                String substring3 = substring2.substring(10);
                if (substring3.endsWith(Util.f116424l)) {
                    if (TextUtils.isEmpty(str5)) {
                        map.put(keyCrashType, "java");
                    }
                    substring = substring3.substring(0, substring3.length() - 12);
                } else if (substring3.endsWith(Util.f116425m)) {
                    if (TextUtils.isEmpty(str5)) {
                        map.put(keyCrashType, "native");
                    }
                    substring = substring3.substring(0, substring3.length() - 14);
                } else {
                    if (!substring3.endsWith(Util.f116426n)) {
                        return;
                    }
                    if (TextUtils.isEmpty(str5)) {
                        map.put(keyCrashType, Util.f116422j);
                    }
                    substring = substring3.substring(0, substring3.length() - 11);
                }
                if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) {
                    Matcher matcher = f116408e.matcher(substring);
                    if (matcher.find() && matcher.groupCount() == 3) {
                        if (TextUtils.isEmpty(str2)) {
                            map.put(keyStartTime, new SimpleDateFormat(Util.f116419g, Locale.US).format(new Date(Long.parseLong(matcher.group(1), 10) / 1000)));
                        }
                        if (TextUtils.isEmpty(str3)) {
                            map.put(keyAppVersion, matcher.group(2));
                        }
                        if (TextUtils.isEmpty(str4)) {
                            map.put(keyProcessName, matcher.group(3));
                        }
                    }
                }
            }
        }
    }

    /* renamed from: c */
    public static void m72082c(Map<String, String> map, BufferedReader bufferedReader, boolean z) throws IOException {
        int i;
        StringBuilder sb = new StringBuilder();
        Status status = Status.UNKNOWN;
        String m72085f = z ? m72085f(bufferedReader) : bufferedReader.readLine();
        int i2 = 1;
        int i3 = m72085f == null ? 1 : 0;
        String str = null;
        String str2 = "";
        boolean z2 = false;
        boolean z3 = false;
        while (i3 == 0) {
            String m72085f2 = z ? m72085f(bufferedReader) : bufferedReader.readLine();
            int i4 = m72085f2 == null ? i2 : 0;
            int i5 = C20563a.f116412a[status.ordinal()];
            if (i5 != i2) {
                if (i5 == 2) {
                    if (m72085f.startsWith("pid: ")) {
                        Matcher matcher = f116405b.matcher(m72085f);
                        if (matcher.find() && matcher.groupCount() == 4) {
                            m72083d(map, keyProcessId, matcher.group(1));
                            m72083d(map, keyThreadId, matcher.group(2));
                            m72083d(map, keyThreadName, matcher.group(3));
                            m72083d(map, keyProcessName, matcher.group(4));
                        } else {
                            Matcher matcher2 = f116406c.matcher(m72085f);
                            if (matcher2.find() && matcher2.groupCount() == 2) {
                                m72083d(map, keyProcessId, matcher2.group(1));
                                m72083d(map, keyProcessName, matcher2.group(2));
                            }
                        }
                    } else if (m72085f.startsWith("signal ")) {
                        Matcher matcher3 = f116407d.matcher(m72085f);
                        if (matcher3.find() && matcher3.groupCount() == 3) {
                            m72083d(map, keySignal, matcher3.group(1));
                            m72083d(map, "code", matcher3.group(2));
                            m72083d(map, keyFaultAddr, matcher3.group(3));
                        }
                    } else {
                        Matcher matcher4 = f116404a.matcher(m72085f);
                        if (matcher4.find() && matcher4.groupCount() == 2 && f116409f.contains(matcher4.group(1))) {
                            m72083d(map, matcher4.group(1), matcher4.group(2));
                        }
                    }
                    if (m72085f2 != null && (m72085f2.startsWith("    r0 ") || m72085f2.startsWith("    x0 ") || m72085f2.startsWith("    eax ") || m72085f2.startsWith("    rax "))) {
                        status = Status.SECTION;
                        str = keyRegisters;
                        str2 = "";
                        z2 = true;
                        z3 = false;
                    }
                    if (m72085f2 == null || m72085f2.isEmpty()) {
                        status = Status.UNKNOWN;
                    }
                } else if (i5 == 3) {
                    if (m72085f.equals(str2) || i4 != 0) {
                        if (f116411h.contains(str) && sb.length() > 0 && sb.charAt(sb.length() - 1) == '\n') {
                            sb.deleteCharAt(sb.length() - 1);
                        }
                        m72084e(map, str, sb.toString(), z3);
                        sb.setLength(0);
                        status = Status.UNKNOWN;
                    } else {
                        if (z2) {
                            if (str.equals(keyJavaStacktrace) && m72085f.startsWith(" ")) {
                                m72085f = m72085f.trim();
                            } else if (m72085f.startsWith(MapUtils.f104930a)) {
                                m72085f = m72085f.substring(4);
                            }
                        }
                        sb.append(m72085f);
                        sb.append('\n');
                    }
                }
            } else if (m72085f.equals(Util.f116416d)) {
                status = Status.HEAD;
            } else {
                if (m72085f.equals(Util.f116417e)) {
                    status = Status.SECTION;
                    sb.append(m72085f);
                    sb.append('\n');
                    str2 = Util.f116418f;
                    str = keyOtherThreads;
                    i = 1;
                    z2 = false;
                    z3 = false;
                } else {
                    i = 1;
                    if (m72085f.length() > 1 && m72085f.endsWith(":")) {
                        status = Status.SECTION;
                        String substring = m72085f.substring(0, m72085f.length() - 1);
                        if (f116410g.contains(substring)) {
                            z2 = substring.equals(keyBacktrace) || substring.equals(keyBuildId) || substring.equals(keyStack) || substring.equals(keyMemoryMap) || substring.equals(keyOpenFiles) || substring.equals(keyJavaStacktrace) || substring.equals(keyXCrashErrorDebug);
                            z3 = substring.equals(keyXCrashError);
                            str = substring;
                            str2 = "";
                        } else {
                            if (substring.equals(keyMemoryInfo)) {
                                str = substring;
                            } else if (substring.startsWith("memory near ")) {
                                sb.append(m72085f);
                                sb.append('\n');
                                str = keyMemoryNear;
                            } else {
                                str = substring;
                                str2 = "";
                                z2 = false;
                                z3 = false;
                            }
                            z3 = true;
                            str2 = "";
                            z2 = false;
                        }
                        i2 = i;
                        m72085f = m72085f2;
                        i3 = i4;
                    }
                }
                i2 = i;
                m72085f = m72085f2;
                i3 = i4;
            }
            i = 1;
            i2 = i;
            m72085f = m72085f2;
            i3 = i4;
        }
    }

    /* renamed from: d */
    public static void m72083d(Map<String, String> map, String str, String str2) {
        m72084e(map, str, str2, false);
    }

    /* renamed from: e */
    public static void m72084e(Map<String, String> map, String str, String str2, boolean z) {
        if (str == null || str.isEmpty() || str2 == null) {
            return;
        }
        String str3 = map.get(str);
        if (!z) {
            if (str3 == null || (str3.isEmpty() && !str2.isEmpty())) {
                map.put(str, str2);
                return;
            }
            return;
        }
        if (str3 != null) {
            str2 = str3 + str2;
        }
        map.put(str, str2);
    }

    /* renamed from: f */
    public static String m72085f(BufferedReader bufferedReader) throws IOException {
        try {
            bufferedReader.mark(2);
            for (int i = 0; i < 2; i++) {
                try {
                    int read = bufferedReader.read();
                    if (read == -1) {
                        bufferedReader.reset();
                        return null;
                    }
                    if (read > 0) {
                        bufferedReader.reset();
                        return bufferedReader.readLine();
                    }
                } catch (Exception unused) {
                    bufferedReader.reset();
                    return bufferedReader.readLine();
                }
            }
            bufferedReader.reset();
            return null;
        } catch (Exception unused2) {
            return bufferedReader.readLine();
        }
    }

    public static Map<String, String> parse(File file) throws IOException {
        return parse(file.getAbsolutePath(), null);
    }

    public static Map<String, String> parse(String str) throws IOException {
        return parse(str, null);
    }

    public static Map<String, String> parse(String str, String str2) throws IOException {
        HashMap hashMap = new HashMap();
        if (str != null) {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(str));
            m72082c(hashMap, bufferedReader, true);
            bufferedReader.close();
        }
        if (str2 != null) {
            BufferedReader bufferedReader2 = new BufferedReader(new StringReader(str2));
            m72082c(hashMap, bufferedReader2, false);
            bufferedReader2.close();
        }
        m72081b(hashMap, str);
        if (TextUtils.isEmpty((String) hashMap.get(keyAppVersion))) {
            String m72105b = XCrash.m72105b();
            if (TextUtils.isEmpty(m72105b)) {
                m72105b = "unknown";
            }
            hashMap.put(keyAppVersion, m72105b);
        }
        m72080a(hashMap);
        return hashMap;
    }
}
