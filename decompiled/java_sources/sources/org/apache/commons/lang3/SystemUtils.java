package org.apache.commons.lang3;

import com.caverock.androidsvg.SVG;
import com.onyx.android.sdk.base.data.font.TTFFont;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import java.io.File;
import org.slf4j.LoggerFactory;

/* loaded from: classes12.dex */
public class SystemUtils {
    public static final boolean IS_JAVA_10;
    public static final boolean IS_JAVA_1_1;
    public static final boolean IS_JAVA_1_2;
    public static final boolean IS_JAVA_1_3;
    public static final boolean IS_JAVA_1_4;
    public static final boolean IS_JAVA_1_5;
    public static final boolean IS_JAVA_1_6;
    public static final boolean IS_JAVA_1_7;
    public static final boolean IS_JAVA_1_8;

    @Deprecated
    public static final boolean IS_JAVA_1_9;
    public static final boolean IS_JAVA_9;
    public static final boolean IS_OS_400;
    public static final boolean IS_OS_AIX;
    public static final boolean IS_OS_FREE_BSD;
    public static final boolean IS_OS_HP_UX;
    public static final boolean IS_OS_IRIX;
    public static final boolean IS_OS_LINUX;
    public static final boolean IS_OS_MAC;
    public static final boolean IS_OS_MAC_OSX;
    public static final boolean IS_OS_MAC_OSX_CHEETAH;
    public static final boolean IS_OS_MAC_OSX_EL_CAPITAN;
    public static final boolean IS_OS_MAC_OSX_JAGUAR;
    public static final boolean IS_OS_MAC_OSX_LEOPARD;
    public static final boolean IS_OS_MAC_OSX_LION;
    public static final boolean IS_OS_MAC_OSX_MAVERICKS;
    public static final boolean IS_OS_MAC_OSX_MOUNTAIN_LION;
    public static final boolean IS_OS_MAC_OSX_PANTHER;
    public static final boolean IS_OS_MAC_OSX_PUMA;
    public static final boolean IS_OS_MAC_OSX_SNOW_LEOPARD;
    public static final boolean IS_OS_MAC_OSX_TIGER;
    public static final boolean IS_OS_MAC_OSX_YOSEMITE;
    public static final boolean IS_OS_NET_BSD;
    public static final boolean IS_OS_OPEN_BSD;
    public static final boolean IS_OS_OS2;
    public static final boolean IS_OS_SOLARIS;
    public static final boolean IS_OS_SUN_OS;
    public static final boolean IS_OS_UNIX;
    public static final boolean IS_OS_WINDOWS;
    public static final boolean IS_OS_WINDOWS_10;
    public static final boolean IS_OS_WINDOWS_2000;
    public static final boolean IS_OS_WINDOWS_2003;
    public static final boolean IS_OS_WINDOWS_2008;
    public static final boolean IS_OS_WINDOWS_2012;
    public static final boolean IS_OS_WINDOWS_7;
    public static final boolean IS_OS_WINDOWS_8;
    public static final boolean IS_OS_WINDOWS_95;
    public static final boolean IS_OS_WINDOWS_98;
    public static final boolean IS_OS_WINDOWS_ME;
    public static final boolean IS_OS_WINDOWS_NT;
    public static final boolean IS_OS_WINDOWS_VISTA;
    public static final boolean IS_OS_WINDOWS_XP;
    public static final boolean IS_OS_ZOS;
    public static final String JAVA_SPECIFICATION_VERSION;
    public static final String JAVA_UTIL_PREFS_PREFERENCES_FACTORY;
    public static final String JAVA_VENDOR;
    public static final String JAVA_VENDOR_URL;
    public static final String JAVA_VERSION;
    public static final String JAVA_VM_INFO;
    public static final String JAVA_VM_NAME;
    public static final String JAVA_VM_SPECIFICATION_NAME;
    public static final String JAVA_VM_SPECIFICATION_VENDOR;
    public static final String JAVA_VM_SPECIFICATION_VERSION;
    public static final String JAVA_VM_VENDOR;
    public static final String JAVA_VM_VERSION;

    @Deprecated
    public static final String LINE_SEPARATOR;
    public static final String OS_ARCH;
    public static final String OS_NAME;
    public static final String OS_VERSION;

    @Deprecated
    public static final String PATH_SEPARATOR;
    public static final String USER_COUNTRY;
    public static final String USER_DIR;
    public static final String USER_HOME;
    public static final String USER_LANGUAGE;
    public static final String USER_NAME;
    public static final String USER_TIMEZONE;

    /* renamed from: a */
    public static final String f107420a = "Windows";

    /* renamed from: b */
    public static final String f107421b = "user.home";

    /* renamed from: c */
    public static final String f107422c = "user.dir";

    /* renamed from: d */
    public static final String f107423d = "java.io.tmpdir";

    /* renamed from: f */
    public static final JavaVersion f107425f;
    public static final String AWT_TOOLKIT = m67262d("awt.toolkit");
    public static final String FILE_ENCODING = m67262d("file.encoding");

    @Deprecated
    public static final String FILE_SEPARATOR = m67262d("file.separator");
    public static final String JAVA_AWT_FONTS = m67262d("java.awt.fonts");
    public static final String JAVA_AWT_GRAPHICSENV = m67262d("java.awt.graphicsenv");
    public static final String JAVA_AWT_HEADLESS = m67262d("java.awt.headless");
    public static final String JAVA_AWT_PRINTERJOB = m67262d("java.awt.printerjob");
    public static final String JAVA_CLASS_PATH = m67262d("java.class.path");
    public static final String JAVA_CLASS_VERSION = m67262d("java.class.version");
    public static final String JAVA_COMPILER = m67262d("java.compiler");
    public static final String JAVA_ENDORSED_DIRS = m67262d("java.endorsed.dirs");
    public static final String JAVA_EXT_DIRS = m67262d("java.ext.dirs");

    /* renamed from: e */
    public static final String f107424e = "java.home";
    public static final String JAVA_HOME = m67262d(f107424e);
    public static final String JAVA_IO_TMPDIR = m67262d("java.io.tmpdir");
    public static final String JAVA_LIBRARY_PATH = m67262d("java.library.path");
    public static final String JAVA_RUNTIME_NAME = m67262d("java.runtime.name");
    public static final String JAVA_RUNTIME_VERSION = m67262d("java.runtime.version");
    public static final String JAVA_SPECIFICATION_NAME = m67262d("java.specification.name");
    public static final String JAVA_SPECIFICATION_VENDOR = m67262d("java.specification.vendor");

    static {
        String m67262d = m67262d("java.specification.version");
        JAVA_SPECIFICATION_VERSION = m67262d;
        f107425f = JavaVersion.get(m67262d);
        JAVA_UTIL_PREFS_PREFERENCES_FACTORY = m67262d("java.util.prefs.PreferencesFactory");
        JAVA_VENDOR = m67262d("java.vendor");
        JAVA_VENDOR_URL = m67262d(LoggerFactory.f116024t);
        JAVA_VERSION = m67262d("java.version");
        JAVA_VM_INFO = m67262d("java.vm.info");
        JAVA_VM_NAME = m67262d("java.vm.name");
        JAVA_VM_SPECIFICATION_NAME = m67262d("java.vm.specification.name");
        JAVA_VM_SPECIFICATION_VENDOR = m67262d("java.vm.specification.vendor");
        JAVA_VM_SPECIFICATION_VERSION = m67262d("java.vm.specification.version");
        JAVA_VM_VENDOR = m67262d("java.vm.vendor");
        JAVA_VM_VERSION = m67262d("java.vm.version");
        LINE_SEPARATOR = m67262d("line.separator");
        OS_ARCH = m67262d("os.arch");
        OS_NAME = m67262d("os.name");
        OS_VERSION = m67262d("os.version");
        PATH_SEPARATOR = m67262d("path.separator");
        USER_COUNTRY = m67262d(m67262d("user.country") == null ? "user.region" : "user.country");
        USER_DIR = m67262d(f107422c);
        USER_HOME = m67262d(f107421b);
        USER_LANGUAGE = m67262d("user.language");
        USER_NAME = m67262d("user.name");
        USER_TIMEZONE = m67262d("user.timezone");
        IS_JAVA_1_1 = m67259a(SerializerConstants.XMLVERSION11);
        IS_JAVA_1_2 = m67259a("1.2");
        IS_JAVA_1_3 = m67259a("1.3");
        IS_JAVA_1_4 = m67259a(SVG.f15818g);
        IS_JAVA_1_5 = m67259a("1.5");
        IS_JAVA_1_6 = m67259a("1.6");
        IS_JAVA_1_7 = m67259a("1.7");
        IS_JAVA_1_8 = m67259a("1.8");
        IS_JAVA_1_9 = m67259a("9");
        IS_JAVA_9 = m67259a("9");
        IS_JAVA_10 = m67259a("10");
        boolean m67261c = m67261c("AIX");
        IS_OS_AIX = m67261c;
        boolean m67261c2 = m67261c("HP-UX");
        IS_OS_HP_UX = m67261c2;
        IS_OS_400 = m67261c("OS/400");
        boolean m67261c3 = m67261c("Irix");
        IS_OS_IRIX = m67261c3;
        boolean z = m67261c("Linux") || m67261c("LINUX");
        IS_OS_LINUX = z;
        IS_OS_MAC = m67261c("Mac");
        boolean m67261c4 = m67261c("Mac OS X");
        IS_OS_MAC_OSX = m67261c4;
        IS_OS_MAC_OSX_CHEETAH = m67260b("Mac OS X", "10.0");
        IS_OS_MAC_OSX_PUMA = m67260b("Mac OS X", "10.1");
        IS_OS_MAC_OSX_JAGUAR = m67260b("Mac OS X", "10.2");
        IS_OS_MAC_OSX_PANTHER = m67260b("Mac OS X", "10.3");
        IS_OS_MAC_OSX_TIGER = m67260b("Mac OS X", "10.4");
        IS_OS_MAC_OSX_LEOPARD = m67260b("Mac OS X", "10.5");
        IS_OS_MAC_OSX_SNOW_LEOPARD = m67260b("Mac OS X", "10.6");
        IS_OS_MAC_OSX_LION = m67260b("Mac OS X", "10.7");
        IS_OS_MAC_OSX_MOUNTAIN_LION = m67260b("Mac OS X", "10.8");
        IS_OS_MAC_OSX_MAVERICKS = m67260b("Mac OS X", "10.9");
        IS_OS_MAC_OSX_YOSEMITE = m67260b("Mac OS X", "10.10");
        IS_OS_MAC_OSX_EL_CAPITAN = m67260b("Mac OS X", "10.11");
        boolean m67261c5 = m67261c("FreeBSD");
        IS_OS_FREE_BSD = m67261c5;
        boolean m67261c6 = m67261c("OpenBSD");
        IS_OS_OPEN_BSD = m67261c6;
        boolean m67261c7 = m67261c("NetBSD");
        IS_OS_NET_BSD = m67261c7;
        IS_OS_OS2 = m67261c(TTFFont.OS_2_TABLE);
        boolean m67261c8 = m67261c("Solaris");
        IS_OS_SOLARIS = m67261c8;
        boolean m67261c9 = m67261c("SunOS");
        IS_OS_SUN_OS = m67261c9;
        IS_OS_UNIX = m67261c || m67261c2 || m67261c3 || z || m67261c4 || m67261c8 || m67261c9 || m67261c5 || m67261c6 || m67261c7;
        IS_OS_WINDOWS = m67261c(f107420a);
        IS_OS_WINDOWS_2000 = m67261c("Windows 2000");
        IS_OS_WINDOWS_2003 = m67261c("Windows 2003");
        IS_OS_WINDOWS_2008 = m67261c("Windows Server 2008");
        IS_OS_WINDOWS_2012 = m67261c("Windows Server 2012");
        IS_OS_WINDOWS_95 = m67261c("Windows 95");
        IS_OS_WINDOWS_98 = m67261c("Windows 98");
        IS_OS_WINDOWS_ME = m67261c("Windows Me");
        IS_OS_WINDOWS_NT = m67261c("Windows NT");
        IS_OS_WINDOWS_XP = m67261c("Windows XP");
        IS_OS_WINDOWS_VISTA = m67261c("Windows Vista");
        IS_OS_WINDOWS_7 = m67261c("Windows 7");
        IS_OS_WINDOWS_8 = m67261c("Windows 8");
        IS_OS_WINDOWS_10 = m67261c("Windows 10");
        IS_OS_ZOS = m67261c("z/OS");
    }

    /* renamed from: a */
    public static boolean m67259a(String str) {
        return m67263e(JAVA_SPECIFICATION_VERSION, str);
    }

    /* renamed from: b */
    public static boolean m67260b(String str, String str2) {
        return m67264f(OS_NAME, OS_VERSION, str, str2);
    }

    /* renamed from: c */
    public static boolean m67261c(String str) {
        return m67265g(OS_NAME, str);
    }

    /* renamed from: d */
    public static String m67262d(String str) {
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            System.err.println("Caught a SecurityException reading the system property '" + str + "'; the SystemUtils property value will default to null.");
            return null;
        }
    }

    /* renamed from: e */
    public static boolean m67263e(String str, String str2) {
        if (str == null) {
            return false;
        }
        return str.startsWith(str2);
    }

    /* renamed from: f */
    public static boolean m67264f(String str, String str2, String str3, String str4) {
        return str != null && str2 != null && m67265g(str, str3) && m67266h(str2, str4);
    }

    /* renamed from: g */
    public static boolean m67265g(String str, String str2) {
        if (str == null) {
            return false;
        }
        return str.startsWith(str2);
    }

    public static String getHostName() {
        return System.getenv(IS_OS_WINDOWS ? "COMPUTERNAME" : "HOSTNAME");
    }

    public static File getJavaHome() {
        return new File(System.getProperty(f107424e));
    }

    public static File getJavaIoTmpDir() {
        return new File(System.getProperty("java.io.tmpdir"));
    }

    public static File getUserDir() {
        return new File(System.getProperty(f107422c));
    }

    public static File getUserHome() {
        return new File(System.getProperty(f107421b));
    }

    /* renamed from: h */
    public static boolean m67266h(String str, String str2) {
        if (StringUtils.isEmpty(str)) {
            return false;
        }
        String[] split = str2.split("\\.");
        String[] split2 = str.split("\\.");
        for (int i = 0; i < Math.min(split.length, split2.length); i++) {
            if (!split[i].equals(split2[i])) {
                return false;
            }
        }
        return true;
    }

    public static boolean isJavaAwtHeadless() {
        return Boolean.TRUE.toString().equals(JAVA_AWT_HEADLESS);
    }

    public static boolean isJavaVersionAtLeast(JavaVersion javaVersion) {
        return f107425f.atLeast(javaVersion);
    }
}
